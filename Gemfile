source 'http://rubygems.org'

gem 'rails', '3.2.2'
#gem "rake", "0.8.7"
# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3'
group :development do 
gem 'activerecord-sqlserver-adapter'
gem 'ruby-odbc'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "3.2.4"
  gem 'coffee-rails', "3.2.2"
  gem 'uglifier', "1.2.3"
end

gem 'jquery-rails', '2.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
group :production do
  gem 'pg', '0.12.2'
end
