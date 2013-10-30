Burgins' Data Thing - experiment 2
==================================
This repository contains the the files for experiment 2 on http://data.andyburgin.co.uk/post/59986415021/experiment-2-graphite-and-a-new-kibana

Since the original release of experiment 2 I've updated the vagrant configs as per  http://data.andyburgin.co.uk/post/65523626178/experiment-2-now-with-better-logstash-handling

The config files now have ufw firewall configurations added by to the logstashdemo machine, you can add it to the wordpressdemo config if you want to. More importantly I've changed the parsing of the syslog messages so they are tokenised in elasticsearch rather than flat messages. I did try and get the geoip filter working for kibana3 maps but I couldn't get the logstash 1.1.13 filter rules to work :-(

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
 |       metadata.rb
 |
 \---wordpressdemo
         Berksfile
         Vagrantfile
		 metadata.rb
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
* The Apache test errors that are reported but to be an error in the apache cookbook

Please log an issue or post a comment on the blog (trolls need not apply).

Cheers

andy
		 
		 