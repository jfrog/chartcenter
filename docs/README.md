[__Welcome__](README.md) | [__FAQ__](faq.md) | [__Inclusion Process__](inclusion.md) | [__Roadmap__](roadmap.md) | [__Security Tab__](security.md) | [__Mitigation Notes__](securitymitigationspec.md) | [__JFrog Container Registry__](jfrog-cr.md) | [__Source__](source-inclusion.md)

------

# Welcome to ChartCenter
![JFrog ChartCenter Logo](https://github.com/jfrog/chartcenter/blob/master/docs/ChartCenterlogo.png?raw=true)

JFrog ChartCenter is a free Helm chart central repository that was built to help the Helm community find immutable, secure, and reliable charts and have a single source of truth to proxy all the charts from one location. 

In ChartCenter, every chart and version is cached and can be retrieved using:

`helm repo add center https://repo.chartcenter.io` 

ChartCenter immutability ensures that every chart version is available even if the original sources are no longer available. Our center also provides free security information about known vulnerabilities in subcharts and containers. Other important features include dependency and used by tree, lint validation, provenance file, license information, application version, Helm version, and more!

Visit our official website: [chartcenter.io](https://chartcenter.io).

**Community** 

The central repository was built for - and will always be free for the community. 

You can see one of our community walkthrough videos here: https://youtu.be/KlNjx1hk5UE.

![Screenshot](https://github.com/jfrog/chartcenter/blob/master/docs/charts.jpg?raw=true)

# Release Notes

ChartCenter is consistently improving your experience based on feedback from the community. We regularly make small improvements and keep a running list of major improvements in our [release.md](https://github.com/jfrog/chartcenter/blob/master/releases.md) file. 

Stay up to date by checking out our [latest release notes](https://github.com/jfrog/chartcenter/blob/master/releases.md).

# Adding New Helm Charts and Repositories to ChartCenter

ChartCenter invites you to add your chart repositories by providing your source url by making a pull request to our [repos.yaml](https://github.com/jfrog/chartcenter/blob/master/repos.yaml) file. 

Start by reading the [inclusion guide](https://github.com/jfrog/chartcenter/blob/master/docs/inclusion.md).

## ChartCenter began by including all charts from HelmHub's repos.yaml file

We were happy to work with the community to improve the stability of Helm charts by including all open source charts in our central repository and aid the community's need for stability. You can view all the charts included from the original HelmHub in our [helm-hub-repos.yaml](https://github.com/jfrog/chartcenter/blob/master/helm-hub-repos.yaml) file. Our goal and intention is to provie true immutability for all publically available charts and provide as much metadata as possible to show where each chart came from and which versions are best to use. Should you have questions, please email us: chartcenter@jfrog.com.

# Troubleshooting

If you’re having any trouble with ChartCenter, you can first check our [FAQ](faq.md) which may answer questions on how our features work, how to find new charts on ChartCenter, and how you can add your own using a pull request. 

We also have a public roadmap(roadmap) with open issues that we invite you to get involved with.

If you have more questions, feel free to email us: chartcenter@jfrog.com.

# Reporting Technical Issues with ChartCenter

The best way to report a problem is to [open an issue](https://github.com/jfrog/chartcenter/issues/new/choose) on this repository. When opening an issue, state clearly whether it is a bug/problem you are experiencing or a request for a new feature or improvement.

If you are submitting a bug report, please provide detailed steps to reproduce your issue. If the issue is about a specific chart, your description should include the name of the chart and the version that you were searching for or trying to add/consume, if relevant.

If your issue already exists, select that issue and add any additional information that might help us resolve it or click the reactions button and thumbs up (+1) if you want to indicate that you are also experiencing this issue, but have no new information to add.

* If your issue is not appropriate for a public discussion, contact us via e-mail at chartcenter@jfrog.com.

# Security Features

Chartcenter includes free vulnerability scanning from [JFrog Xray](https://jfrog.com/xray/). The security tab on each chart version provides unknown, low, and medium severity issues coming from the National Vulnerability Database using CVSS v2. High severity issues are available, but must be activated by chart maintainers. [Learn more](https://github.com/jfrog/chartcenter/blob/master/docs/securitymitigationspec.md).

# Legal and Links

The [Terms of Service](https://chartcenter.io/terms) for JFrog ChartCenter
The JFrog ChartCenter [Privacy Policy](https://chartcenter.io/privacypolicy).

# Contact Us

* Twitter: tweet at us [@chartcenterio](https://twitter.com/chartcenterio)
* Slack: Find us in #ChartCenter channel in the [Kubernetes Slack](https://kubernetes.slack.com/)
* Email: chartcenter@jfrog.com




