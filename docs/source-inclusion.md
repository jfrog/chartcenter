# Add a New Chart - How It Works

While Helm repositories allow you to store and pull versioned Helm charts and share them with the community, one problem with hosting repositories is all the management that you have to take care of just to host a single chart. You have to worry about:
* helm dependencies updates
* helm package updates
* Upload to Github pages, S3 bucket, etc...

### Why would you create and run your own chart repository when we can do it for you?

ChartCenter now has a source inclusion feature that allows you to include any git-based Helm chart directly. ChartCenter will host your repository and assign you a namespace based on your git repo name. 

When you make an inclusion request and add a new chart, there are 3 key pieces of information that need from you. 

Provide us the url of your repository, your maintainer information, and the path to the chart.yaml file (we use the chart.yaml to fill out the chart details.

![Adding Charts](https://github.com/jfrog/chartcenter/blob/master/docs/img/addchart.png)

Once you agree to the terms (outlined below) and you submit the inclusion request, you will receive an email to confirm that you did in fact make the request. Once you confirm that email with us - ChartCenter will provide you a link back to the center that will show you the status of your request. 

That status page will let you know if your inclusion request is in queue to start, is already being processed, or if we ran into an error. Once your chart inclusion request has been fully processed, that status page will confirm that your chart is ready. Then - all you have to do is search for the chart using the search bar and you’ll see all the data populated on ChartCenter! Congrats! 

# Namespace Reservation

As a source git repository, ChartCenter currently supports Github, Gitlab and Bitbucket. The main domain associated with these repositories will form the namespace for your charts that are included using this feature. For example:

* Github will be made `gh-` as a prefix to your account name there. Example: `gh-rimusz-lab`
* GItlab will be `gl-` prefix
* Bitbucket will be `bb-` prefix

# How To Tag Releases

Chart git releases have to have SemVer based git tags:
* v0.0.1-chart-name
* 0.0.1-chart-name

![Tags](https://github.com/jfrog/chartcenter/blob/master/docs/img/tag2.png)

*Note: the git release file might have other charts, which aren’t part of inclusion so these charts will be safely ignored and only charts which were added to ChartCenter via inclusion from source process will be processed.*

# Terms

ChartCenter’s goal is to help improve standards around security and reliability. When an inclusion request is made using the source inclusion feature, ChartCenter will package your chart and sign and secure it using PGP and generate a helm provenance file. When you agree to these terms, you are agreeing to allow us to be the key signing authority for your chart request on the center.

Should you want to opt-out of having your chart signed using this method, you can use the checkbox to opt-out during the source inclusion process, but for security, your chart will not be added to Chartcenter.

Should you have any questions, please email: chartcenter@jfrog.com.

