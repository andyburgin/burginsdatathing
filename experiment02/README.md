Burgins' Data Thing - experiment 2
==================================
This repository contains the the files for experiment 2 on http://data.andyburgin.co.uk/post/59986415021/experiment-2-graphite-and-a-new-kibana

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
I'm still learning all these technologies, your "constructive" feedback and comments are very much welcome, especially those relating to the hacks I've used :

* Subnet LAN setup hack
* Chef 11 hack
* apt repository update fix
* Beaver pip install forcing release 29
* The Apache/mod_python errors that are reported but seem irrelevant

Please log an issue or post a comment on the blog (trolls need not apply).

Cheers

andy
		 
		 