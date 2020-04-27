# Adding New Charts to HelmCenter

The first step in adding a repository to HelmCenter is to create a new pull request with the following two pieces of information:

In the file at XXX.yaml add your repository with a short name and the base URL to the repository.
In the file XXX.yaml, alongside this file, add contact information for the repository. This contact information is necessary when there is a need for the Helm project to contact those who manage a repository (e.g., it goes offline). 

The pull request will be reviewed by the HelmCenter team and if it follows our guidelines, will be available on HelmCenters soon after.

For issues, email us at info@helmcenter.io with the subject [Add Charts] or add a comment to this GitHub issue here.

## Guidlines

Repositories listed in the distributed search should follow Helm chart best practices. In addition to these practices we expect:

Every chart to have a maintainer listed along with valid contact information for each maintainer. The contact information could be in the form of an email address or link to a contact form
Charts to pass Helm lint, be installable and upgradable in all community supported versions of Kubernetes, and to use semantic versioning to share intent in released changes. To help with this we suggest leveraging the Chart Testing project.
Have a NOTES.txt template with useful information which Helm will display after installation
Chart versions to be immutable
Legal Guidelines

### Reserving a Namespace

### Notes for Making a Pull Request

The specific steps to add new charts are:
Legal
Namespace
Include your email contanct info

# We want your feedback

As we continue to build out HelmCenetr, we want her help improving how new charts are added. You can provide your feedback here.

