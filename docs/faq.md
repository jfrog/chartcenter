[__Welcome__](README.md) | [__FAQ__](faq.md) | [__Inclusion Process__](inclusion.md) | [__Public Roadmap__](roadmap.md) | [__Security Tab__](security.md) | [__Mitigation Notes__](securitymitigationspec.md) | [__JFrog Container Registry__](jfrog-cr.md)

------

# Frequently Asked Questions
Do you have a question about ChartCenter? We have the answer!

## How do I add charts to ChartCenter?
Start by reading the [inclusion guide](inclusion.md) and then making a pull request to the repos.yaml file. 

## How do I install the Helm Charts on ChartCenter?
First, you'll need to make sure you have downloaded [Helm](https://helm.sh/docs/intro/install/).
Next, you'll want to configure ChartCenter using the command `helm repo add center https://repo.chartcenter.io`.
Now, once you have found the chart you want to use - you can use the command helm install [ PATH ]. For example, to intall the artifactory chart you use `helm install center/jfrog/artifactory`.

## How do I activate my email for mitigation notes?

First, go to the ChartCenter security tab for your chart and click on **Are you a chart maintainer?** on the top-left. This will open up a box that allows you to provide your email. As long as your email address is associated with the chart, your email will be activated and you can provide us mitigation notes using the [security specifications.(securitymigitationspec.md)

## What is the Security Mitigation YAML file?
ChartCenter is the first central repository of Helm charts to provide free vulnerability information right in the UI. Given the various components that are bundled into a helm chart and its list dependencies, we've also built an easy way for chart maintainers to provide mitigation notes (such as issues that are being resolved in the next release and vulnerabilities that aren't directly included in the application). These notes are stored in a YAML file called security-mitigation.yaml.  [More information can be found here](https://github.com/jfrog/chartcenter/blob/master/docs/securitymitigationspec.md).

## Does ChartCenter use Helm version 2 or version 3?
ChartCenter includes all chart versions and application versions, which you can see in the UI right under the chart name. Api version: v1 refers to Helm2 charts and Api version: v2 refers to Helm3 charts. Helm3 is now the standard and provides better features with the removal of Tiller. You can learn more about [migrating Helm v2 to v3](https://helm.sh/blog/migrate-from-helm-v2-to-helm-v3/).

## How can I get involved?
We’ve got a number of open issues on the [public roadmap](https://github.com/jfrog/chartcenter/blob/master/docs/roadmap.md). Feel free to comment or email us at chartcenter@jfrog.com.

