#
# Cookbook:: ms
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


# package 'httpd' if platform_family == 'redhat' # centos
# package 'apache2' if platform_family == 'debian' # ubuntu

# Install base packages 
node['ms']['package_list'].each do |pkg|
    package pkg
end

service 'apache2' do 
    action [:start, :enable]
end

# cookbook_file '/var/www/html/index.html' do
#     source 'index.html'
# end

template '/var/www/html/index.html' do
    source 'index.html.erb'
end
