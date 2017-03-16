#
# Cookbook:: newcookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#3
file '/var/tmp/test.txt' do
        content "to test"
        not_if { ::File.exist?('/etc/passwd') }
end

#9
file '/var/tmp/test1.txt' do
	content "to test"
	only_if { ::File.exist?('/etc/passwd') }
end
