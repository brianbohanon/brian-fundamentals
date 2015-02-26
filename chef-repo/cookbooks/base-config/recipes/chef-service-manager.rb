#chef-service-manager -a install
powershell_script "chef-service-manager-install" do
	code "chef-service-manager -a install"
	action :run
end

#chef-service-manager -a start
powershell_script "chef-service-manager-start" do
	code "chef-service-manager -a start"
	action :run
end
