#
# Cookbook:: yogaraj
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'httpd' do
        action :install
        flush_cache [ :before ]
end
service 'httpd' do
        action :start
end
file '/var/www/html/index.html' do
        content 'welcome'
        action :create
end
service 'firewalld' do
        action [:disable, :stop]
end

