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

cookbook_file 'C:\inetpub\wwwroot\Default.htm' do
	source "Default.htm"
	rights :read, "Everyone"
end