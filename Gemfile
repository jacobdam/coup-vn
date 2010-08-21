source "http://gemcutter.org"

gem 'rails', '3.0.0.rc'
gem 'formtastic', :git => 'git://github.com/justinfrench/formtastic.git', :branch => 'rails3'
gem 'devise'
gem 'haml'

group :production do
  gem 'pg'
end

# should not define group development and test on heroku environment
if ENV['USER'].nil? || !(ENV['USER'] =~ /^repo/)
  group :development do
    gem 'sqlite3-ruby', :require => 'sqlite3'
    gem 'nifty-generators'
    gem 'rails3-generators'
  end

#  group :test do
#    gem 'shoulda'
#    gem 'rspec', '>= 2.0.0.beta.19'
#    gem 'rspec-rails', '>= 2.0.0.beta.19'
#    gem 'factory_girl_rails'
#    gem 'faker'
#  end
end
