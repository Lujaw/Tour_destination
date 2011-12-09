source 'http://rubygems.org'

gem 'rails', '3.1.3'
gem 'sqlite3'
gem 'carrierwave'
gem 'devise'
# gem "rmagick", :require => 'RMagick'
gem "rmagick", "~> 1.15.17", :require => 'RMagick'
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test, :development do 
  gem 'rspec-rails'
  gem 'pry'
  gem 'pry-doc'
  gem 'ruby-debug19' ,:require =>'ruby-debug'
  #gem "ruby-debug-base19", "0.11.23", :require => nil
end

group :test do
 # gem 'cucumber-rails'
 
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'capybara'
  gem 'selenium'
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'valid_attribute'
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec'
  gem 'turn', '~> 0.8.3', :require => false
end