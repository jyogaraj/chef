#
# Cookbook:: java
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'wget'

execute 'get java' do
	command "wget --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.rpm -P /opt "
end
 
rpm_package 'java8' do
	source "/opt/jdk-8u92-linux-x64.rpm"
	action :install
end
