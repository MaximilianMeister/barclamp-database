name "database-server_remove"
description "Remove Database Server Role"
run_list(
  "recipe[database::remove_server]"
)
default_attributes()
override_attributes()
