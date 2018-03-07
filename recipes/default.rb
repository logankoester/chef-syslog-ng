package('syslog-ng') { action :install }

service 'syslog-ng@default' do
  supports status: true, start: true, stop: true, restart: true, reload: true
  action [:enable, :start]
end

template '/etc/syslog-ng/syslog-ng.conf' do
  mode '0644'
  owner 'root'
  source 'syslog-ng.conf.erb'
  notifies :restart, 'service[syslog-ng]'
end
