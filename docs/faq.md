# Frequently Asked Questions
Do you have a question about HelmCenter? We have the answer!

## Why should I use HelmCenter?
We launched HelmCenter because we wanted to provide the community a place to quickly find immutable, stable, and safe HelmCharts. Our new center is a central repository - meaning no charts can ever be deleted from HelmCenter once added. We have every available version and even provide free security information about all publically known vulnerabilities using [JFrog Xray](#).

## How do I add charts to HelmCenter?
Start by reading the [inclusion guide](#) and then making a pull request to the repos.yaml file. 

## How do I use Helm Charts?
First, you'll need to make sure you have downloaded [Helm](#).
Next, you'll want to configure HelmCenter using the command _________
Now, once you have found the chart you want to use - you can use the command _______ .

## What is the YAML file?
YAML is a human-readable data-serialization language. It is commonly used for configuration files and in applications where data is being stored or transmitted. YAML targets many of the same communications applications as Extensible Markup Language but has a minimal syntax and was designed to be easy to read. We store our chart information in a repos.yaml file. 

## What is a Helm Chart Template?

## Can I use HelmCenter as a proxy?

## Does HelmCenter use Helm version 2 or version 3?
Helm3 removed Tiller from the process.

## What is Tiller?
Tiller interacts with the Kubernetes API server. It renders Helm template files into Kubernetes manifest files, which it uses for operations on the Kubernetes cluster through the Kubernetes API. Tiller lives inside your Kubernetes cluster that is responsible to perform patches and changes to resources you ask to manage.

## How can I get involved?
