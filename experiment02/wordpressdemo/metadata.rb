maintainer       "Andy Burgin"
maintainer_email "devops@andyburgin.co.uk"
license          "Apache 2.0"
description      "Installs/Configures wordpress"

%w[ debian ubuntu ].each do |os|
  supports os
end