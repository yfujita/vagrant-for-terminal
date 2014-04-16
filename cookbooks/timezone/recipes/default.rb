bash 'set timezone' do
  not_if { File.identical?( '/usr/share/zoneinfo/Japan', '/etc/localtime' ) }
  code <<-EOC
    ln -sf /usr/share/zoneinfo/Japan /etc/localtime
  EOC
end
