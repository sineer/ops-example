# apt-get install this package if not installed.
package "nginx"

# Use nginx.conf.erb with my attributes and variables to create the file below with correct permissions.
template "/etc/nginx/nginx.conf" do
  source "nginx.conf.erb"
  owner "root"
  group "root"
  mode "644"
end

# Starts nginx.
# Configures nginx to start at boot.
service "nginx" do
  action [:start, :enable]
end

