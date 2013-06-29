Burgins' Data Thing - experiment 1
===============================
This repository contains the the files for experiment 1 on http://data.andyburgin.co.uk/post/54174246106/experiment-1-vagrant-chef-elasticsearch-logstash

To save you reading the "how" I'll detail what you need to do here, for the "why" hop on over to the blog and have a read.

Prerequsites
------------
First install vagrant and the vagrant berkshelf plugin from:

* http://www.vagrantup.com/
* https://github.com/RiotGames/vagrant-berkshelf

File Structure
--------------
Checkout/clone the repository into your vagrant folder or whereever you see fit:
```
 +---logstashdemo
 |       Berksfile
 |       Vagrantfile
 |
 \---wordpressdemo
         Berksfile
         Vagrantfile
```
Up and Running
--------------		 
Tweak the network settings in each vagrantfile and "vagrant up" each vm. 

As mentioned in the blog article there's one bit not working, ssh into the logstashdemo server and "sudo service kibana start"

Talk To Me
----------
I'm still learing all these technologies, your "constructive" feedbacka nd comments are very much welcome, especially those relating to the dirty hacks I've user :

* Subnet LAN setup hack
* Chef 11 hack
* apt repository update fix
* Beaver pip install forcing release 29
* Start Kibana at boot

Log an issue or post a comment on the blog.

Cheers

andy
		 
		 