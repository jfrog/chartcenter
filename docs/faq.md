[__Welcome__](README.md) | [__FAQ__](faq.md) | [__Add Repo__](inclusion.md) | [__Add Chart__](source-inclusion.md) | [__Roadmap__](roadmap.md) | [__Security Tab__](security.md) | [__Mitigation Notes__](securitymitigationspec.md) | [__JFrog Container Registry__](jfrog-cr.md) 

# Attention: Deprecation Notice for Bintray, GoCenter, ChartCenter, and JCenter. [Learn More](https://jfrog.com/blog/into-the-sunset-bintray-jcenter-gocenter-and-chartcenter)

------

# Frequently Asked Questions

Do you have a question about ChartCenter? We have the answer!

## How do I add charts to ChartCenter?

Start by reading the [inclusion guide](inclusion.md) and then making a pull request to the repos.yaml file. 

## How do I install the Helm Charts on ChartCenter?

First, you'll need to make sure you have downloaded [Helm](https://helm.sh/docs/intro/install/).
Next, you'll want to configure ChartCenter using the command `helm repo add center https://repo.chartcenter.io`.
Now, once you have found the chart you want to use - you can use the command helm install [ PATH ]. For example, to install the artifactory chart you use `helm install center/jfrog/artifactory`.

## What charts does ChartCenter have?

ChartCenter was populated by using the existing charts that HelmHub. Those charts are still availabe on ChartCenter, and you can see a list here: [helmhub repo](https://github.com/jfrog/chartcenter/blob/master/helm-hub-repos.yaml). Additionally, all new repos and charts are being added by chart authors for inclusion to ChartCenter. You can view all of those charts on the [repos.yaml file](https://github.com/jfrog/chartcenter/blob/master/repos.yaml).

## How do I activate my email for mitigation notes?

First, go to the ChartCenter security tab for your chart and click on **Are you a chart maintainer?** on the top-left. This will open up a box that allows you to provide your email. As long as your email address is associated with the chart, your email will be activated and you can provide us mitigation notes using the [security specifications.(securitymigitationspec.md)

## What is the Security Mitigation YAML file?

ChartCenter is the first central repository of Helm charts to provide free vulnerability information right in the UI. Given the various components that are bundled into a helm chart and its list dependencies, we've also built an easy way for chart maintainers to provide mitigation notes (such as issues that are being resolved in the next release and vulnerabilities that aren't directly included in the application). These notes are stored in a YAML file called security-mitigation.yaml.  [More information can be found here](https://github.com/jfrog/chartcenter/blob/master/docs/securitymitigationspec.md).

## Does ChartCenter use Helm version 2 or version 3?

ChartCenter includes all chart versions and application versions, which you can see in the UI right under the chart name. Api version: v1 refers to Helm2 charts and Api version: v2 refers to Helm3 charts. Helm3 is now the standard and provides better features with the removal of Tiller. You can learn more about [migrating Helm v2 to v3](https://helm.sh/blog/migrate-from-helm-v2-to-helm-v3/).

## Can I use ChartCenter for dependency charts?

To use ChartCenter for dependency chart referencing the [chartcenter-plugin](https://github.com/jfrog/chartcenter-plugin) needs to be used at all times in Helm v2 and v3.

There is a limit in the Helm client, the `helm package` doesn’t support an extra namespaces that ChartCenter added. To fix that an [upstream issue](https://github.com/helm/helm/issues/8537) has been opened for Helm v3 but after a while it was closed by Helm mainteiners.

## Can charts be removed?

We believe that immutability is the primary goal of ChartCenter and providing this stability is really important for the Helm community, but if you are the author of an open source Helm chart and would like to request a chart be removed, please reach out to us: chartcenter@jfrog.com. For excluded repositories, chartcenter will just forward the request to the original source.

## How can I get involved?

We’ve got a number of open issues on the [public roadmap](https://github.com/jfrog/chartcenter/blob/master/docs/roadmap.md). Feel free to comment or email us at chartcenter@jfrog.com.
