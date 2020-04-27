# Adding New Charts to HelmCenter

The first step in adding packages to HelmCenter is making a pull request to your chart location. 

For issues, email us at info@helmcenter.io with the subject [Add Charts] or add a comment to this GitHub issue here.

# We want your feedback

As we continue to build out HelmCenetr, we want her help improving how new charts are added. You can provide your feedback here.

# Notes for Making a Pull Request

The specific steps to add new charts are:

Fork the conan-center-index git repository, and then clone it.
Create a new folder with the Conan package recipe (conanfile.py)
Push to GitHub, and submit a pull request.
Our automated build service will build 100+ different configurations, and provide messages that indicate if there were any issues found during the pull request on GitHub.
When the pull request is reviewed and merged, those packages are published to center.conan.io.

More Information about Recipes
The conan-center-index (this repository) contains recipes for the conan-center repository.

To contribute with a Conan recipe into the conan-center repository you can submit a Pull Request to the master branch of this repository. The connected continuous integration system will generate binary packages automatically for the most common platforms and compilers. See the Supported Platforms and Configurations page to know the generated configurations. For a C++ library, the system is currently generating more than 100 binary packages.

⚠️ Note: This CI service is not a testing service, it is a binary building service for package releases. Unit tests shouldn't be built nor ran in recipes by default. Before submitting a PR it is mandatory to run at least a local package creation.

The CI system will also report with messages in the PR any error in the process, even linking to the logs to see more details and debug.

When pull requests are merged, the CI generated package binaries will be uploaded to ConanCenter. These packages won't contain the @user/channel part. You will be able to install them specifying only library_name/version as a requirement, omitting the @user/channel part. (Conan >= 1.21).

Previously existing packages in ConanCenter, with the full reference including @user/channel will still be available, but the previous process of “inclusion request” for getting them into Conan-center is now deprecated, and new contributions should follow this guide. Those packages will be gradually contributed to this repo to generate new binaries without the @user/channel.

How to submit a Pull Request
Before start
Make sure you are using the latest Conan client version, the recipes might evolve introducing features of the newer Conan releases.

The recipe folder
Create a new subfolder in the recipes folder with the name of the package in lowercase.
