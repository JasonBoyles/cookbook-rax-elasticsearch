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

include_recipe 'java'

# find the first ipv4 address of the cloud network interface
cn_interface_ipv4 = node[:network][:interfaces][:eth2][:addresses].find \
  {|addr, addr_info| addr_info[:family] == "inet"}.first

Chef::Log.info("print interface ip is #{cn_interface_ipv4}")

node.set[:elasticsearch][:custom_config] = {
  'discovery.zen.ping.multicast.address' => cn_interface_ipv4,
  }

include_recipe 'elasticsearch::default'
include_recipe 'elasticsearch::proxy'
