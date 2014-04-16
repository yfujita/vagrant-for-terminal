directory "/usr/local/package-local" do
  mode 0755
end

cookbook_file "/usr/local/package-local/tmux-1.6-1.el6.rf.x86_64.rpm" do
  source "tmux-1.6-1.el6.rf.x86_64.rpm"
end

cookbook_file "/home/vagrant/.tmux.conf" do
  source ".tmux.conf"
end

package "tmux-1.6-1.el6.rf.x86_64.rpm" do
  action :install
  source "/usr/local/package-local/tmux-1.6-1.el6.rf.x86_64.rpm"
  provider Chef::Provider::Package::Rpm
end

