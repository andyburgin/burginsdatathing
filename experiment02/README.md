Burgins' Data Thing - experiment 2
==================================
This repository contains the the files for experiment 2 on 


***********************co.uk/post/70070135143/fgddfgfdgfdgfdgfdg-logstash-1-3-1 


including the latest updates and some serious refactoring of the original vagrant setup.

Since the original incarnation of experiment 2 there have been several blog posts and github commits...

* http://data.andyburgin.co.uk/post/59986415021/experiment-2-graphite-and-a-new-kibana
* http://data.andyburgin.co.uk/post/65523626178/experiment-2-now-with-better-logstash-handling
* http://data.andyburgin.co.uk/post/65526969877/experiment-2-how-to-secure-beaver
* http://data.andyburgin.co.uk/post/70070135143/experiment-2-running-logstash-1-3-1

...that have taken the work done in experiment 1 and improved upon it. I'm now at a point where I think I can park the project (at least until the chef cookbook supports 1.4.x version of logstash) as it's as feature packed as I'd like and doesn't have any "quirks" or configuration "idiosyncrasies".


Excuse Me, What Does this Do ?
------------------------------
For those of you that are new to experiment 2 (or indeed my blog) it's an attempt to allow anyone to simply grab vagrant and quickly have a working Logstash server with Kibana web interface up and running with an accompanying machine to ship logs to to it (via beaver). All the configuration work has been done and apart from setting some ip addresses to suit your setup you should be up and running comparatively quickly (depending upon you machine spec and internet bandwidth.

This readme deals with the "how", hop on over to the blog and have a read at the "why".


Refactoring
-----------
I was never completely happy with how I'd left experiment 2, there were too many "ignore this error" and "as a work around you'll need to...", I'm please to say these are now gone (unless you're on windows and have the github client installed - more later). 

So things that are now fixed:

* Use a hashicorp Ubuntu 12.04 LTS box from https://vagrantcloud.com/
* Chef 11 hack is gone - now using the chef omnibus installer plugin
* apt repository update workaround gone - now using the chef omnibus installer plugin 
* apart from setting ip addresses in the Vagentfiles the networking quirks are gone
* Beaver install tweaks no longer needed
* The false Apache test errors have now gone
* No need to manually autostart kibana - that's working now
* UFW config much simpler
* GeoIP and Maps working in Kibana - woot!


Prerequsites
------------
First install the latest version of vagrant with the associated plugins, I've listed the versions I've used:

	Virtualbox 4.3.10

	Vagrant 1.6.3 - https://www.vagrantup.com/downloads.html

	Vagrant Berkshelf - https://github.com/berkshelf/vagrant-berkshelf 
```
		vagrant plugin install vagrant-berkshelf --plugin-version '>= 2.0.1' --verbose
```
	Vagrant Chef Omnibus installer - https://github.com/schisamo/vagrant-omnibus
```
		vagrant plugin install vagrant-omnibus
```
If you have errors installing the Berkshelf plugin on windows this may because you have the github client installed, apparently this comes with a version of "tar" that isn't compatible with the plugin installer, as a fix download tar and add it to path in before github client:

	http://gnuwin32.sourceforge.net/packages/gtar.htm
	http://gnuwin32.sourceforge.net/downlinks/tar-bin-zip.php
	http://gnuwin32.sourceforge.net/downlinks/tar-dep-zip.php
	http://www.microsoft.com/en-gb/download/details.aspx?id=8328


File Structure
--------------
Checkout/clone the repository into your vagrant folder or where ever you see fit:
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
Tweak the network settings in each vagrantfile and "vagrant up" each vagrant machine. See http://www.vagrantup.com/ if you are't familiar with that. 

Now setup your new wordpress blog (admin account, make a few posts etc) - http://192.168.2.222/ 

Then you can take a look under the hood on the logstash server using elasticsearch plugins:

	http://192.168.2.220:9200/_plugin/head/
	http://192.168.2.220:9200/_plugin/bigdesk/
	http://192.168.2.220:9200/_plugin/paramedic/

Then look at the very pretty Kibana interface

	http://192.168.2.220:9200/
	
And don't forget, there's graphite installed for you too!

	http://192.168.2.220:8080/


Production Ready ?
------------------
Just remember that as this is an experiment you really would need to test this under load for production. As with all community cookbooks, make sure you freeze them and review what they do - common sense. Depending upon your network segmentation you may also want to encrypt the traffic between your shipper and logstash server take a look at http://data.andyburgin.co.uk/post/65526969877/experiment-2-how-to-secure-beaver
	
	
	
	
Feedback
--------
As mentioned in the blog article there's one bit not working, ssh into the logstashdemo server and "sudo service kibana start"

Please log an issue or post a comment on the blog (trolls need not apply).

Cheers

andy
		 
		 