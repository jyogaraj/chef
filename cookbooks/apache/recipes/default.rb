#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "php"
include_recipe "mysql"
package 'httpd'
