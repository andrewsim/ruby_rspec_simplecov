#Docker

I would like to set up Jenkins that contains the job described in this project to be runnable from Docker, 
so far I have created the ``Dockerfile`` that will get the base Jenkins Docker container (the official one from Jenkins in DockerHub) 
and install:
* Ruby
* RubyGems
* Bundler

#Steps
* make sure ``Docker`` is installed and is up and running.
* ``cd`` into the directory with the ``Dockerfile`` and build the container and name it anything you like, in my case, I named it ``andrewsim/ruby_rspec_simplecov``:
```
$ docker build -t="andrewsim/ruby_rspec_simplecov" .
```
* Then run it:
```
$ docker run --name myjenkins -p 8080:8080 -v /var/jenkins_home andrewsim/ruby_rspec_simplecov
```
* Find out the IP address of the VM, if you start Docker using ``boot2docker``, then simple do:
```
$ boot2docker ip
```
* Open the browser to the ip address port ``8080``, there you shall see Jenkins.
