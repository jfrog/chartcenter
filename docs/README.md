[__Welcome__](README.md) | [__FAQ__](faq.md) | [__Inclusion Process__](inclusion.md) | [__Public Roadmap__](roadmap.md) | [__Security Tab__](security.md) | [__Mitigation Notes__](securitymitigationspec.md) | [__JFrog Container Registry__](jforg-cr.md)

------

# Welcome
![JFrog ChartCenter Logo](https://github.com/jfrog/chartcenter/blob/master/docs/ChartCenterlogo.png?raw=true)

ChartCenter is a free Helm chart central repository and was built to help the Helm community find immutable, secure, and reliable charts and have a single source of truth to proxy all the charts from one location. Every chart and version is cached and can be retrieved using `helm repo add center https://repo.chartcenter.io`. ChartCenter immutability ensures that every chart version is available even if the original sources are no longer available. Our center even provides free security information about all publically known vulnerabilities in subcharts and containers. Other important features include dependencies and used by tabs, linting, provenance file data, license information, application version, Helm version, and many other metrics.

The central repository was built for - and will always be free for the community. Visit our official website: [chartcenter.io](https://chartcenter.io).

# Release Notes

ChartCenter is consistently improving your experience based on feedback from the community. We regularly make small improvements and keep a running list of major improvements in our [release.md](https://github.com/jfrog/chartcenter/blob/master/releases.md) file. Stay up to date by checking out our latest release notes.

# Adding New Helm Charts and Repositories to ChartCenter

ChartCenter invites you to add your chart repositories by providing your source url and other information in our [repos.yaml](https://github.com/jfrog/chartcenter/blob/master/repos.yaml) file. Start by reading the [inclusion guide](https://github.com/jfrog/chartcenter/blob/master/docs/inclusion.md) and then [making a pull request to repos.yaml](#).

# Contributing Code to ChartCenter

ChartCenter is a collaborative community made up of developers like you! 

Before we can accept your contribution, process your GitHub pull requests, and thank you full-heartedly, we request that you will fill out and submit JFrog's Contributor License Agreement (CLA).

[Click here](https://secure.echosign.com/public/hostedForm?formid=5IYKLZ2RXB543N) to submit the JFrog CLA. This should only take a minute to complete and is a one-time process.

Thanks for Your Contribution to the Community! :-)

# Documentation and Troubleshooting

If you’re looking for ChartCenter documentation, you're in the right place! Our FAQ can answer questions on how our features work, how to find new charts on ChartCenter, and how you can add your own using a pull request. We also have a public roadmap with open issues that we invite you to get involved with.

Over time, we’ve compiled a list of some of the most common troubleshooting issues that arise when using ChartCenter. Our troubleshooting tips can be found in our [FAQ](#).

# Reporting Technical Issues with ChartCenter

[Open an issue](https://github.com/jfrog/chartcenter/issues) on this repository for any problems you experience while using our service or for any improvements you wish to discuss. When opening an issue, state clearly whether it is a bug/problem you are experiencing or a request for a new feature or improvement.

If you are submitting a bug report, please provide detailed steps to reproduce your issue. If the issue is about a specific chart, your description should include the name of the chart and the version that you were searching for or trying to add/consume, if relevant.

If your issue already exists, select that issue and add any additional information that might help us resolve it or click the reactions button and thumbs up (+1) if you want to indicate that you are also experiencing this issue, but have no new information to add.

* If your issue is not appropriate for a public discussion, contact us via e-mail at chartcenter@jfrog.com.
* If you have issues integrating Artifactory with JFrog ChartCenter and you have support, file a [support ticket](#).

# Legal and Links

The [Terms of Service](https://chartcenter.io/terms) for JFrog ChartCenter
The JFrog ChartCenter [Privacy Policy](https://chartcenter.io/privacypolicy)

# Contact Us

* Twitter: tweet at us @chartcenter.io
* Slack: Find us in #ChartCenter channel in the Kubernetes Slack
* Email: chartcenter@jfrog.com



