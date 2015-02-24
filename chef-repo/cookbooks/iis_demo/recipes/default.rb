#
# Cookbook Name:: iis_demo
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
powershell_script "Install IIS" do 
	code "add-windowsfeature Web-Server"
	action :run
end

service "w3svc" do 
	action [ :enable, :start]
end

node.default["iis_demo"]["indexfile"] = "Default2.htm"
cookbook_file 'C:\inetpub\wwwroot\Default.htm' do
	source node["iis_demo"]["indexfile"]
	rights :read, "Everyone"
end