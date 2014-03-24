name             'rax-elasticsearch'
maintainer       'Rackspace'
maintainer_email 'jason.boyles@rackspace.com'
license          'All rights reserved'
description      'Wrapper for OpenStack heat deployment of elasticsearch'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'elasticsearch'
depends 'java'
depends 'firewall'
