directory "/usr/local/package-local" do
  mode 0755
end
directory "/usr/share/maven/" do
  mode 0755
end

bash 'download maven binary' do
  only_if { !File.exists?('/usr/local/package-local/apache-maven-3.2.1-bin.tar.gz') }
  code <<-EOC
    wget http://ftp.yz.yamagata-u.ac.jp/pub/network/apache/maven/maven-3/3.2.1/binaries/apache-maven-3.2.1-bin.tar.gz -P /usr/local/package-local
    tar zxvf /usr/local/package-local/apache-maven-3.2.1-bin.tar.gz -C /usr/share/maven/
    chown -R vagrant.vagrant /usr/share/maven/apache-maven-3.2.1
  EOC
end

