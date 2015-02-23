# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "brianbohanon-aarons"
client_key               "#{current_dir}/brianbohanon-aarons.pem"
validation_client_name   "brian-fundamentals-validator"
validation_key           "#{current_dir}/brian-fundamentals-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/brian-fundamentals"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]
