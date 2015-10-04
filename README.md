# Gitrob

Please read this blog [blog post](http://michenriksen.com/blog/gitrob-putting-the-open-source-in-osint/) before using this tool.
This Dockerfile automates the setup for Gitrob.

## Installation

There are a few simple steps:

1. [clone this repo](https://github.com/artburkart/gitrob-docker)
1. Configure the GH_ORG and GH_TOKEN values in the .env file
1. Run `docker-compose up -d && docker-compose logs`
    2. The logs should exit because gitrob falls over when there is no database to connect to. This is because I didn't set up a wait script. I don't intend to either.
1. Run `docker-compose logs` again to see gitrob begin scanning all public repos related to the given GH_ORG

## View WebPage

1. Once the `docker-compose logs` announce sinatra has started, you can view which port 9393 is mapped to with `docker ps`.

## Notice

Since this Dockerfile automates the acceptance of the Gitrob user agreement. I feel it is necessary to share here:

> Gitrob is designed for security professionals. If you use any information
> found through this tool for malicious purposes that are not authorized by
> the organization, you are violating the terms of use and license of this
> tool. By running this Docker image, you agree to the terms
> of use and that you will use this tool for lawful purposes only.
