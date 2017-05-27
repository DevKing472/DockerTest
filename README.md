# Docker Test

An example of using Docker with a Node project.

Prereq: Setting up a Node project

Docker is a way of running your code in an isolated environment, called a container.
This isolated environment is helpful because you can control what dependencies are
run in that environment, and be assured that the environment is standardized wherever
its run. This way, you can be sure your code will work the way you expect, and without
it being influenced by things outside of the Docker container.

In order to run a Docker container, you first need to describe what you want that
Docker container to be like. In order to do so, you will need to create a Dockerfile
that you can fill up with different configurations. Once you have a Dockerfile that
configures a Docker container the way you like, you do a build -- which is a lot like
compiling your Dockerfile. This then generates a Docker image, which is a conceptual
blueprint for the Docker container. You then can run a Docker container by specifying
the Docker image.

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
