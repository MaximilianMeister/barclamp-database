resource = "database"
main_role = "server"
role_name = "#{resource}-#{main_role}"

unless node["roles"].include?(role_name)
  #TODO Call either mysql or psql deactivation recipe
end
