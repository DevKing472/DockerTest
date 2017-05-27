# Docker Test

An example of using Docker with a Node project.

Prereq: Setting up a Node project

# Steps

* Set up a Node project that can be started.
* Create a Dockerfile
    * This is like config file to tell Docker how to create an image
* Populate the Dockerfile
    * See the Dockerfile in this directory for an example
* Once the Dockerfile is populated, create an image from it using `docker build .`
* After the successful build, you can list images you've built with `docker images`
* You can run the image by doing `docker run ID`