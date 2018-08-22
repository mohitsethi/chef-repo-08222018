

# Application deployment
# 0. configure environment
# 1. artifact /war (http://34.201.36.182/sample.war)
# 2. configurations
# 3. location webapps


include_recipe 'ms::tomcat'

location = node['ms']['tomcat']['target_location']+"/webapps/#{node['ms']['tomcat']['artifact_name']}"
url = node['ms']['tomcat']['artifact_url']

remote_file "#{location}" do
    source url
    action :create
end