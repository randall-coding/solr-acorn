# Launch a Solr search server

## Solr
Solr (or Apache Solr) is an open source enterprise level search engine optimized for high volume and high speed.  Built on Apache Lucene™, this search engine boasts of advanced full-text search, large scale search, highly scalable fault tolerant performance, near real-time indexing, comprehensive administrative interfaces, and extensible plugin architecture.  

Solr can be run as part of your microservice architecture as its own node.  In this tutorial we will be doing just that.  

To make the process even simpler, we will deploy our Solr instance using an acorn image.

## What is Acorn? 
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storate space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with cli
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Deploying Acorn
Now that we have the acorn cli configured, we can create and deploy our acorn image with a few simple commands.  You can modify the volume size (5Gi) or container RAM (2Gi) by editing the `run` command.

`acorn build -t solr`

`acorn run -n solr --memory=2Gi -v solr-data,size=5Gi solr`

Visit your dashboard to see if your deployment was successful.

Click on the solr deployment, and find the endpoint section on the right side panel.  This is your solr dashboard link.

!! endpoint image

You should see a dashboard like the one below:

!! dashboard

## Configure Solr
To ssh into your new server run:

`acorn exec solr bash`

See the [getting started](https://solr.apache.org/guide/solr/latest/getting-started/introduction.html) and [configuration](https://solr.apache.org/guide/solr/latest/configuration-guide/configuration-files.html) documentation for detailed instructions on working with your Solr server.    

## Conclusion
That's all there is to it.  We've now got our solr server up and running from an acorn image.

## References
* [Getting started with Solr]((https://solr.apache.org/guide/solr/latest/getting-started/introduction.html)
* [Getting started with Acorn](https://docs.acorn.io/getting-started)
