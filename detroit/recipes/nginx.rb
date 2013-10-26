# apt-get install this package if not installed.
package "nginx" do
  version "1.1.19-1"
end

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
  supports :restart => true, :reload => true
  action [:start, :enable]
end
