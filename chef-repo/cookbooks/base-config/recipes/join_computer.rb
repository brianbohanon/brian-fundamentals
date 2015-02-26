#join_computer.rb
#add computer to domain
powershell_script "join_domain" do
	code "add-computer -domain aarons.azure -credential(New-Object -TypeName System.Management.Automation.PSCredential('dscadminsvc',(get-content c:\\scripts\\encrypted_password1.txt | ConvertTo-SecureString))) -ComputerName 'bbwebchef01'"
	action :run
end

#restart-computer
powershell_script "restart_computer" do
	code "restart-computer"
	action :run
end