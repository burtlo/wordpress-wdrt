#
# Cookbook Name:: wordpress-wdrt
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

node.default['wordpress']['db']['user'] = 'wp_user'
node.set['wordpress']['db']['pass'] = 'something_more_secure'

include_recipe 'wordpress::default'

db = node['wordpress']['db']

mysql_database_user db['user'] do
  connection    mysql_connection_info
  database_name db['name']
  password      db['password']
  privileges    [:all]
  action        :grant
end
