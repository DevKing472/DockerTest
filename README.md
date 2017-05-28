# Docker Test

An example of using Docker with a Node project.

Prereq: Setting up a Node project

Docker is a way of running your code in an isolated environment, called a container.
This isolated environment is helpful because you can control what dependencies are
run in that environment, and be assured that the environment is standardized wherever
its run. This way, you can be sure your code will work the way you expect, and without
it being influenced by things outside of the Docker container. Think of a container
like a virtual machine, except much lighter weight.

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
* Once the Dockerfile is populated, create an image from it using `docker build -t imagename .`
    * Of course, every time you change the Dockerfile, you need to build again
    * Think of the build like a compilation step
* After the successful build, you can list images you've built with `docker images`
    * This lists *all* images you've built, across your entire machine
* You can run the image by doing `docker run ID`
    * To detach the app and run it in the background, do `docker run -d ID`
    * And to see a list of docker images currently running, do `docker ps`

* This is extremely helpful, because by providing the relevant files and the Dockerfile,
  you can run your code in an isolated environment with the correct dependencies
* All you need to do is pull in that directory/repository on a machine that can run
  Docker, and do `docker build -t imagename .` and `docker run ID`!

# Docker Cloud

Docker also has a way for you to upload your images into public repositories in the
cloud. Think of this like GitHub, except for Docker images and not your source code.
To use Docker Cloud, you will first need to make an account on the 
[Docker Cloud website](https://cloud.docker.com). Once your account is set up, go to
your command line and log in by doing:

```
docker login
```

and enter your credentials. You can now tag your Docker images and push them up to
the Cloud! Once you have an image that's successfully built on your local machine,
you can tag it (aka mark what version it is). Do this by running:

```
docker tag imagename username/repository:tag
```

Once your image is tagged, you can push it by running:

```
docker push username/repository:tag
```

This image now becomes publicly available, so anyone can run your Docker image. So
be careful with what you put on the Cloud! (You also get two free private repos on
Docker Cloud.) To run this publicly available image, do:

```
docker run username/repository:tag
```

Essentially, this means you can run any publicly available Docker image (which spins
off and runs some useful services) and all you need to have is Docker installed on
your machine! Nothing else! 