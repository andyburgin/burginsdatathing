maintainer       "Andy Burgin"
maintainer_email "devops@andyburgin.co.uk"
license          "Apache 2.0"
description      "Installs/Configures logstash"

%w{ ubuntu debian redhat centos scientific amazon fedora }.each do |os|
  supports os
end

%w{ apache2 php build-essential git rbenv runit python java ant logrotate yumrepo }.each do |ckbk|
  depends ckbk
end

%w{ yumrepo apt }.each do |ckbk|
  recommends ckbk
end
