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
    * Of course, every time you change the Dockerfile, you need to build again
    * Think of the build like a compilation step
* After the successful build, you can list images you've built with `docker images`
    * This lists *all* images you've built, across your entire machine
* You can run the image by doing `docker run ID`

* This is extremely helpful, because by providing the relevant files and the Dockerfile,
  you can run your code in an isolated environment with the correct dependencies
* All you need to do is pull in that directory/repository on a machine that can run
  Docker, and do `docker build .` and `docker run ID`!
