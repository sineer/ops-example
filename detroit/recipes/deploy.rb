# Deploys the given git project to the deploy directory.
git "/data/www" do
  repository "git@github.com:brunobuccolo/detroit.git"
  revision "master"
  action :sync
  user "nginx"
  group "nginx"
end
