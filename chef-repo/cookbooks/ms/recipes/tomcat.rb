include_recipe 'ms::default'
include_recipe 'java'

tomcat_install 'helloworld' do
    # install_path "/opt/tomcat"
    version node['ms']['tomcat']['version']
end

tomcat_service 'helloworld' do
    action [:start, :enable]
end

node['ms']['tomcat']['target_location'] = "/opt/tomcat_helloworld_#{node['ms']['tomcat']['version']}" 



# Default: /opt/tomcat_INSTANCENAME_VERSION
# /opt/tomcat_helloworld_#{node['ms']['tomcat']['version]}