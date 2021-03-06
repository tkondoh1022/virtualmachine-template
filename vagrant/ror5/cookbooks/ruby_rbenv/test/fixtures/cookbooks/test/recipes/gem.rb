rbenv_system_install 'system'
rbenv_user_install 'vagrant'

rbenv_ruby '2.4.1'
rbenv_ruby '2.3.1'
rbenv_ruby '2.3.1' do
  user 'vagrant'
end

rbenv_global '2.4.1'

rbenv_gem 'mail' do
  version '2.6.5'
  options '--no-rdoc --no-ri'
  rbenv_version '2.3.1'
end

rbenv_gem 'mail' do
  version '2.6.6'
  rbenv_version '2.3.1'
  action :remove
end

rbenv_gem 'bundler' do
  version '1.15.4'
  user 'vagrant'
  rbenv_version '2.3.1'
end
