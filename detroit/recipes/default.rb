# Executes nginx recipe.
include_recipe "detroit::nginx"

# Creates deploy directory with correct permissions.
directory "/data/www" do
  owner "nginx"
  group "nginx"
  mode "755"
end
