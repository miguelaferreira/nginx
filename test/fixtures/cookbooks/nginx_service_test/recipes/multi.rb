user = node['platform'] == 'centos' && node['platform_version'].to_i == 7 ? 'nginx' : 'www-data'

nginx_service 'multi1' do
  run_user user
end

nginx_service 'multi2' do
  run_user user
end
