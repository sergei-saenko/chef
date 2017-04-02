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
  command 'echo "<?php phpinfo(); ?>" > /var/www/html/index.php; chown apache. /var/www/html/index.php'
  notifies :reload, 'service[httpd]', :immediately
end
