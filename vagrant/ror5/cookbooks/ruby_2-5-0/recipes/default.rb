#
# Cookbook:: ruby_2-5-0
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

rbenv_system_install 'foo' do
    git_url "https://github.com/rbenv/rbenv.git"
end 

rbenv_user_install 'vagrant' do
    git_url "https://github.com/rbenv/rbenv.git"
    user "vagrant"
end

rbenv_ruby '2.5.0'

rbenv_global '2.5.0'

rbenv_rehash 'rehash' do
    user 'vagrant'
end

yum_package 'sqlite-devel' do
    action :install
end

rbenv_gem 'sqlite3' do
    rbenv_version '2.5.0'
end

rbenv_gem 'unicorn' do
    rbenv_version '2.5.0'
end

rbenv_gem 'postgresql' do
    rbenv_version '2.5.0'
end

rbenv_gem 'rails' do
    rbenv_version '2.5.0'
end
