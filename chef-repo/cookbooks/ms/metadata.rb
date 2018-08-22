name 'ms'
maintainer 'Mohit Sethi'
maintainer_email 'mohit@sethis.in'
license 'All Rights Reserved'
description 'Installs/Configures ms'
long_description 'Installs/Configures ms'
version '0.1.6'
chef_version '>= 12.1' if respond_to?(:chef_version)
issue_url 'https://github.com/mohitsethi/ms-ckbk'

depends 'mysql', '~> 8.0'
depends 'tomcat'
depends 'java'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/ms/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/ms'
