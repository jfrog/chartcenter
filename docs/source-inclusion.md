[__Welcome__](README.md) | [__FAQ__](faq.md) | [__Add Repo__](inclusion.md) | [__Add Chart__](source-inclusion.md) | [__Roadmap__](roadmap.md) | [__Security Tab__](security.md) | [__Mitigation Notes__](securitymitigationspec.md) | [__JFrog Container Registry__](jfrog-cr.md) 

# Attention: Deprecation Notice for Bintray, GoCenter, ChartCenter, and JCenter. [Learn More](https://jfrog.com/blog/into-the-sunset-bintray-jcenter-gocenter-and-chartcenter)

------

# Add a New Chart - How It Works

While Helm repositories allow you to store and pull versioned Helm charts and share them with the community, one problem with hosting repositories is all the management that you have to take care of just to host a single chart. You have to worry about:
* helm dependencies updates
* helm package updates
* Upload to Github pages, S3 bucket, etc...

### Why would you create and run your own chart repository when we can do it for you from source?

ChartCenter now has a source inclusion feature that allows you to include any git-based Helm chart directly. ChartCenter will host your repository and assign you a namespace based on your git repo name. 

When you make an inclusion request and add a new chart, there are 3 key pieces of information that need from you. 

Provide us the url of your repository, your maintainer information, and the path to the chart.yaml file (we use the chart.yaml to fill out the chart details.

![Adding Charts](https://github.com/jfrog/chartcenter/blob/master/docs/img/addchart.png?raw=true)

* **Repository URL** - the full URL path to your Git repository
* **Chart maintainer email** - This is required, and must match your email in the chart’s Chart.yaml file.
* **Path to location of Chart.yaml** - The path in the git repository where your chart is stored.

**Note**: You can add only one chart at a time from the same Git repository.

Once you agree to the terms (outlined below) and you submit the inclusion request, you will receive an email to confirm that you did in fact make the request. Once you confirm that email with us - ChartCenter will provide you a link back to the center that will show you the status of your request. 

That status page will let you know if your inclusion request is in queue to start, is already being processed, or if we ran into an error. Once your chart inclusion request has been fully processed, that status page will confirm that your chart is ready. Then - all you have to do is search for the chart using the search bar and you’ll see all the data populated on ChartCenter! Congrats! 

# Namespace Reservation

When ChartCenter hosts your Helm chart from source, it creates a namespace from the main domain of your Git repository with a prefix for the type of source control that was used:

* **gh-** For Github (for example gh-rimusz-lab).
* **gl-** For Gitlab
* **bb-** For Bitbucket

# How To Tag Releases

Chart git release tag must be compliant with [semantic versioning](https://semver.org/) and include the chart name:
* v0.0.1-chart-name
* 0.0.1-chart-name

![Tags](https://github.com/jfrog/chartcenter/blob/master/docs/img/tag2.png?raw=true)

**Note**: the git release file might have other charts, which aren’t part of inclusion so these charts will be safely ignored and only charts which were added to ChartCenter via inclusion from source process will be processed.

# Terms

ChartCenter’s goal is to help improve standards around security and reliability. When an inclusion request is made using the source inclusion feature, ChartCenter will package your chart and sign and secure it using PGP and generate a helm provenance file. When you agree to these terms, you are agreeing to allow us to be the key signing authority for your chart request on the center.

Should you want to opt-out of having your chart signed using this method, you can use the checkbox to opt-out during the source inclusion process, but for security, your chart will not be added to Chartcenter.

Should you have any questions, please email: chartcenter@jfrog.com.

