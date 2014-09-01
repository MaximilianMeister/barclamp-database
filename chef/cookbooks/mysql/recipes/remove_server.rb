resource = "database"
main_role = "server"
role_name = "#{resource}-#{main_role}"

unless node["roles"].include?(role_name)
  barclamp_role role_name do
    service_name node["mysql"][main_role]["service_name"]
    action :remove
  end

  # delete all attributes from node
  node.delete(resource)

  node.save
end
