#
# Cookbook Name:: ckan_docker
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'docker.io' do
  action [:install, :upgrade]
end

execute "docker run -d --name db ckan/postgresql" do
  user  "root"
  group "root"
end

execute "docker run -d --name solr ckan/solr" do
  user  "root"
  group "root"
end

execute "docker run -d -p 80:80 --link db:db --link solr:solr ckan/ckan" do
  user  "root"
  group "root"
end
