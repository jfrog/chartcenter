# Release Notes

<!-- MarkdownTOC autolink="true" bracket="round" -->
- [2020 Dec 23: Backend Changes](#2020-dec-23-backend-changes)
- [2020 Dec 15: Inclusion from Source](#2020-dec-15-inclusion-from-source)
- [2020 Oct 21: UI Metadata Improvements](#2020-oct-21-ui-metadata-improvements)
- [2020 July 27: Fixes and Install Instructions](#2020-july-27-fixes-and-install-instructions)
- [2020 June 24: GA](#2020-june-24-ga)

<!-- /MarkdownTOC -->
## 2020 Dec 23: Backend Changes
A new version of ChartCenter was released to production. Here's the list of issues resolved:
* Enable High CVE Count (Backend only)
*  Usage of a common library in router that will be reused in all centers going forward. This change encourages reusability across the board instead of duplicating the code in multiple centers.

## 2020 Dec 15: Inclusion from Source
A few days ago we released an enhanced inclusion feature in ChartCenter along with a few bug fixes. Enhanced Inclusion is a very important feature for the community since it removes friction and let developers focus on only building charts instead of figuring out the details of hosting and managing Helm repositories. Here are the list of items that got released:
* Enhanced Inclusion: [Read blog](https://jfrog.com/blog/host-your-helm-chart-in-chartcenter-directly-from-source/)
* Ability to host documentation directly on ChartCenter
* New API to update the repo url to reflect if a public repo url changes for a Helm repositories. Example - location of stable and incubator repos changed. 
* Bug Fix: YAML parse error on citrix/citrix-multi-cluster-ingress-controller 1.11.3
* Bug Fix: Do not try to process library charts to discover docker dependencies
* Bug Fix: Cannot collect docker dependencies for smallstep/step-certificates 1.15.5

## 2020 Oct 21: UI Metadata Improvements
A new release was pushed to production today that includes UI changes improvements:
* Show original repository details on information box and Chart Info tab
* Replace 2 featured charts that were deprecated with new ones
* Enable Helmet and Morgan plugin to improve security and logging of UI

## 2020 July 27: Fixes and Install Instructions
A new release was pushed to production today. Many minor fixes were part of the release. To summarize:

* Install instructions for charts did not include a name for the chart install. This issue has been addressed.
* Search had a bug. It wasn't working if back button was clicked. This issue has been fixed.
* Featured charts now point to correct version of nginx-ingress

## 2020 June 24: GA
Chartcenter.io goes live! [Read our blog for more information](https://jfrog.com/blog/launching-jfrog-chartcenter-helm-chart-repository/).

* Basic ability to search for charts
* Basic ability to request new repos and charts be added
* Basic ability to determine the chart version, Helm version, and application version
* Basic vulnerability information
* Maintainer mitigation feature
* Immutable Charts with all versions
* Inclusion - PR to repos.yaml file
* Keywords, Description, License, Download Count
* Maintainer Info, Home URL, Source URL
* Dependency and UsedBy information

