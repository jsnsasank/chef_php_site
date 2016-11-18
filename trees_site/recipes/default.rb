#
# Cookbook Name:: trees_site
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#


execute 'install mysql repo' do
  command "yum -y -q install https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm"
  not_if "rpm -q mysql57-community-release-el7"
end

pkg_list  = ['httpd','git','php','php-mysql','mysql-community-server']
root_pass = "welcome"

pkg_list.each do |pkg|
  package pkg do
    action :install
  end
end

service "httpd" do
  action [:enable, :start]
end

bash 'reset root' do
  code <<-EOF
cat > /tmp/myroot.sql <<-EOFSQL
UPDATE mysql.user SET authentication_string = PASSWORD('#{root_pass}'), password_expired = 'N' WHERE User = 'root' AND Host = 'localhost';
FLUSH PRIVILEGES;
EOFSQL
systemctl stop mysqld
systemctl set-environment MYSQLD_OPTS="--skip-grant-tables"
systemctl start mysqld
mysql -u root < /tmp/myroot.sql
systemctl stop mysqld
systemctl unset-environment MYSQLD_OPTS
EOF
  action :run
end

service "mysqld" do
  action [:enable, :start]
end


cookbook_file '/tmp/create_tables.sql' do
  source 'create_tables.sql'
  owner 'root'
  group 'root'
  mode '0600'
end

execute 'create database' do
  command "mysql -h 127.0.0.1 -u root -p#{root_pass} -e 'CREATE DATABASE pasha_asp;'"
  not_if "mysql -h 127.0.0.1 -u root -p#{root_pass} -e 'USE pasha_asp'"
end


execute 'add tables' do
  command "mysql -h 127.0.0.1 -u root -p#{root_pass} -D pasha_asp < /tmp/create_tables.sql"
  not_if "mysql -h 127.0.0.1 -u root -p#{root_pass} -D pasha_asp -e 'describe bank;'"
end

  
git '/var/www/html' do
  repository  'https://github.com/ls457/php_site.git'
  revision 'master'
  action :sync
  notifies :restart, 'service[httpd]'
end
