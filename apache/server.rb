# ~/cookbooks/apache/recipes/server.rb

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "<h1> Hello, #{node['hostname']}/ #{node['ipaddress']} </h1>"
end

service 'httpd' do
  action [:enable,:start ]
end

