#
# Cookbook Name:: rax-elasticsearch
# Recipe:: default
#
# Copyright 2014, Rackspace
#
# All rights reserved - Do Not Redistribute
#

node.set[:java][:install_flavor] = 'openjdk'
node.set[:java][:jdk_version] = 7

include_recipe 'java::default'

#cn_interface_ipv4 =                                  \
#  node[:network][:interfaces][:en2][:addresses].find \
#  {|addr, addr_info| addr_info[:family] == "inet"}.first

# node.set[:elasticsearch][:custom_config] = {
#  'discovery.zen.ping.multicast.address' => cn_interface_ipv4 }

include_recipe 'elasticsearch::default'
