#
# Cookbook Name:: wordpress-wdrt
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

node.default['wordpress']['db']['host']  = "127.0.0.1"

include_recipe 'wordpress::default'
