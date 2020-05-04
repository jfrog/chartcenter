[__Welcome__](index.md) ------ 
[__FAQ__](faq.md) ------ 
[__Inclusion Process__](inclusion.md) ------ 
[__Public Roadmap__](roadmap.md) ------ 
[__JFrog Container Registry__](jforg-cr.md)

# Adding New Charts to HelmCenter

The first step in adding charts to HelmCenter include creating a repository following the [guidelines](#) outlined below. Once you have understood the guidelines for naming your repository, the 2nd step is to access the [`repos.yaml`](https://github.com/jfrog/helmcenter/blob/master/repos.yaml) file and create a new [pull request](#) with the following pieces of information added to the file:

```name: jfrog```

```url: https://jfrog.github.io```

```maintainers:```

```name: yourName```

```email: info@jfrog.com```

The pull request will be reviewed by the HelmCenter team and if it follows our guidelines, will be available on HelmCenters soon after.

For issues, email us at info@helmcenter.io with the subject [Add Charts to HelmCenter] or add a comment to this GitHub issue here.

## Guidelines

Repositories added to HelmCenter should always follow Helm chart best practices. In addition to these practices we expect:

* Every chart to have a maintainer listed along with valid contact information for each maintainer. 
* The contact information should be in the form of an email address that shows ownership of the domain
* Charts must pass Helm lint, be installable and upgradable in all community supported versions of Kubernetes, and use semantic versioning
* Have a NOTES.txt template with useful information which Helm will display after installation
* Chart versions should be immutable 
* Your charts must have an appropriate license 
* We must be able to verify that you have write access to this repo

### Reserving a Namespace

Namespaces will be reserved on a first-come basis pending verification of ownership. Normally, we will reserve the namespace based on the URL of the provided. Should we need further verification, we will contact you by email with the subject line [HelmCenter Verification Needed]. 

#### What to do if your namespace is taken or you want to change it?
Namespacesa and charts in HelmCenter are immutable. It is under the discretion of the team to decide if your namespace can be changed. All charts associated with your namespace will remain on HelmCenter, but may be labeled as deprecated. If your namespace has already been reserved and you feel that this has been done in error, email: helmcenter@jfrog.com

#### Official Namespaces
We are reviewing the process to provide organizations official namespaces. The criteria is up for discussion on this open issue here. 

### Notes on Making a Pull Request

In your pull request, please make sure to provide the best way to contact you should we need to verify the ownership of namespace. The 'name' keyword that you provide in the pull request to the repos.yaml file will become the namespace of your repository. The best way for us to verify ownership of the namespace is if it matches the URL and email information also provided. Should HelmCenter feel the need to review your namespace ownership details, your contact information is necessary. There may be a need for our team to contact those who manage a repository and verify authorship if DNS isn't sufficient. HelmCenter maintainers reserve the right to manually check if you are the helm repo maintainer. If not, the PR will not be merged.

We will verify your namespace and check that you are the author of the project by reviewing the domain records. For guidance on domain verification [provide info or anchor].

### Legal and License Compliance

# We want your feedback

As we continue to build out the HelmCenter inclusion process, we want her help improving how new charts are added. You can provide your feedback on the process by commenting on this open issue here.

