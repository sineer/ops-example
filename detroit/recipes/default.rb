# apt-get update; could be optimized to not run every time
bash "updates packages" do
  code "apt-get update"
end

# apt-get install git
package "git"

# Executes nginx recipe.
include_recipe "detroit::nginx"

# Creates deploy directory with correct permissions.
directory "/data/www" do
  recursive true
  owner "www-data"
  group "www-data"
  mode "755"
end
