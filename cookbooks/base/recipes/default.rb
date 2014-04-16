%w{curl git unzip vim}.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end

%w{java-1.7.0-openjdk.x86_64}.each do |pkg|
  yum_package pkg do
    action [:install, :upgrade]
  end
end

service "iptables" do
  action :stop
end
