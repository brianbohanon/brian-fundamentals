#rename the computer
powershell_script "rename_computer" do
	code "Rename-Computer bbwebchef01"
	action :run
end

#restart-computer
powershell_script "restart_computer" do
	code "restart-computer"
	action :run
end