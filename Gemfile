source 'https://rubygems.org'

ruby '2.2.0'
gem 'rails', '4.2.0'
gem 'rails-api'
gem 'pg'
gem 'devise'
gem 'responders', '~> 2.0'

group :development, :test do
  gem 'spring'
  gem 'thin'
  gem 'byebug'

  gem 'rspec-rails'
  gem 'guard-rspec', require: false
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'shoulda-matchers'
end

group :production do
  gem 'rails_12factor'
  gem 'puma', '2.11.1'
end