nginx_service 'single' do
  run_user node['platform'] == 'centos' && node['platform_version'].to_i == 7 ? 'nginx' : 'www-data'
end
