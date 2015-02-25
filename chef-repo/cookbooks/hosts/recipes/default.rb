#
# Cookbook Name:: hosts
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file "#{ENV['windir']}\\System32\\drivers\\etc\\hosts" do
	action :remove
end

template "#{ENV['windir']}\\System32\\drivers\\etc\\hosts" do
	source "hosts.erb"
end