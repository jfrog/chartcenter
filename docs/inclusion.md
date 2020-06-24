[__Welcome__](README.md) | [__FAQ__](faq.md) | [__Inclusion Process__](inclusion.md) | [__Public Roadmap__](roadmap.md) | [__Security Tab__](security.md) | [__Mitigation Notes__](securitymitigationspec.md) | [__JFrog Container Registry__](jfrog-cr.md)

------

# Add Repositories to ChartCenter

1. The first step in adding a chart to ChartCenter includes creating a repository following the **guidelines** outlined below.

2. Once you have understood the guidelines for naming your repository, the 2nd step is to clone the [`repos.yaml`](https://github.com/jfrog/helmcenter/blob/master/repos.yaml) file and create a new pull request with the following pieces of information added to the file:

```
- name: jfrog
  type: helm
  url: https://jfrog.github.io
  maintainers:
    - name: yourName
      email: info@jfrog.com
```

The pull request will be reviewed by the ChartCenter team and if it follows our guidelines, will be available on ChartCenter soon after. 

3. You will receive a confirmation that your pull request has been merged and your repo has been added successfully.

For issues, email us at chartcenter@jfrog.com with the subject [Add Repos to ChartCenter].

## Guidelines

Repositories added to CharttCenter should always follow Helm chart best practices. In addition to these practices we expect:

* Every chart to have a maintainer listed along with valid contact information for each maintainer. 
* The contact information should be in the form of an email address that shows ownership of the domain
* Charts must pass Helm lint, be installable and upgradable in all community supported versions of Kubernetes
* Charts should use semantic versioning
* We strongly recommend a NOTES.txt template with useful information
* Chart versions should be immutable 
* Your charts must have an appropriate license 
* We must be able to verify that you have write access to this repo

### Reserving a Namespace

Namespaces will be reserved on a first-come basis pending verification of ownership. Normally, we will reserve the namespace based on the URL of the provided. Should we need further verification, we will contact you by email with the subject line [HelmCenter Verification Needed]. 

#### What to do if your namespace is taken or you want to change it?

Namespaces and charts in ChartCenter are immutable. It is under the discretion of the team to decide if your namespace can be changed. All charts associated with your namespace will remain on ChartCenter, but may be labeled as deprecated. If your namespace has already been reserved and you feel that this has been done in error, email: chartcenter@jfrog.com

#### Official Namespaces

We are reviewing the process to provide organizations official namespaces. The criteria is up for discussion on this [open issue here](https://github.com/jfrog/chartcenter/issues/4). 

### Notes on Making a Pull Request

In your pull request, please make sure to include the email address - this will be used to contact you should we need to verify the ownership of the namespace. The 'name' keyword that you provide in the pull request to the repos.yaml file will become the namespace of your repository. The best way for us to verify ownership of the namespace is if it matches the URL and email information provided. Should ChartCenter feel the need to review your namespace ownership details, your contact information will be used. ChartCenter reserves the right to manually check if you are the helm repo maintainer. If not, the PR will not be merged.

### Legal and License Compliance

The [Terms of Service](https://chartcenter.io/terms) for JFrog ChartCenter The JFrog ChartCenter [Privacy Policy](https://chartcenter.io/privacypolicy).

# We want your feedback

As we continue to build out the ChartCenter inclusion process, we want your help improving how repositories and charts are added. You can provide your feedback on the process by commenting on this [open issue here](https://github.com/jfrog/chartcenter/issues/3).

