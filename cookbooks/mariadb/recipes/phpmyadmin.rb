#
# Cookbook:: mariadb
# Recipe:: phpmyadmin
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'phpmyadmin' do
end

package 'php' do
end


execute '' do
  case node[:platform]
  when 'redhat', 'centos'
  command 'echo "<?php phpinfo(); ?>" > /var/www/html/index.php; chown apache. /var/www/html/index.php;systemctl reload httpd'
  when 'ubuntu', 'debian'
  command 'echo "<?php phpinfo(); ?>" > /var/www/html/index.php; chown apache. /var/www/html/index.php;systemctl reload apache2'
end
