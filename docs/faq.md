[__Welcome__](index.md) ------ 
[__FAQ__](faq.md) ------ 
[__Inclusion Process__](inclusion.md) ------ 
[__Public Roadmap__](roadmap.md) ------ 
[__JFrog Container Registry__](jforg-cr.md)

# Frequently Asked Questions
Do you have a question about ChartCenter? We have the answer!

## Why should I use ChartCenter?
We launched our free central repository because we wanted to provide the community a place to quickly find immutable, stable, and secure Helm charts. Our new center is an immutable central repository - meaning no charts can ever be deleted from ChartCenter once added. Our center stories every available version and even provides free security information about all publically known vulnerabilities using [JFrog Xray](#). 

## How do I add charts to ChartCenter?
Start by reading the [inclusion guide](#) and then making a pull request to the repos.yaml file. 

## How do I install the Helm Charts on ChartCenter?
First, you'll need to make sure you have downloaded [Helm](https://helm.sh/docs/intro/install/).
Next, you'll want to configure ChartCenter using the command `helm repo add center https://repo.chartcenter.io`.
Now, once you have found the chart you want to use - you can use the command helm install [ PATH ]. For example, to intall the artifactory chart you use `helm install center/jfrog/artifactory`.

## What is the YAML file for inclusion?
YAML is a human-readable data-serialization language. It is commonly used for configuration files and in applications where data is being stored or transmitted. YAML targets many of the same communications applications as Extensible Markup Language but has a minimal syntax and was designed to be easy to read. We store our chart information in a repos.yaml file. 

## What is the YAML file included in security?
ChartCenter is the first Helm central repository to provide free security tools in the UI. Given the complexity of mitigating all the components bundled in a helm chart and its dependencies, we've built an easy way for chart maintainers to provide mitigation notes (such as issues that are being resolved in the next release and vulnerabilities that aren't directly included in application). These notes are stored in a YAML file. [More information can be found here](#).

## So I can proxy the mitigation notes from the author as well? 
Yes, the maintainer notes are also available to the public. Instructions for how to access these notes will be provided.

## Can I use ChartCenter as a proxy?

## Does HelmCenter use Helm version 2 or version 3?
ChartCenter includes all chart versions and application versions, which you can see in the UI right under the chart name. Api version: v1 refers to Helm2 charts and Api version: v2 refers to Helm3 charts. Helm3 is now the standard and provides better features with the removal of Tiller. You can learn more about [migrating Helm v2 to v3](https://helm.sh/blog/migrate-from-helm-v2-to-helm-v3/).

## How can I get involved?
Coming soon. You can also email us at chartcenter@jfrog.com.
