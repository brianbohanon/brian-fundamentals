  name "domain-computer"
  description "Add chef-client as a service and joins the domain"
  run_list "recipe[base-config::chef-service-manager]",
              "recipe[base-config::join_computer]"
