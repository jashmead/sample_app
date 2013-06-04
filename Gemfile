# rails default fixed in accord with ruby.railstutorial.org
source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc1'
gem 'bootstrap-sass', '2.1'
gem 'bcrypt-ruby', '3.0.1'

# Use sqlite3 as the database for Active Record
group :development, :test do
	gem 'sqlite3', '1.3.7'
	gem 'rspec-rails', '2.13.1'
	gem 'guard-rspec', '2.5.0'
	gem 'spork-rails', github: 'railstutorial/spork-rails'
	gem 'guard-spork', '1.5.0'
	gem 'childprocess', '0.3.6'
end

group :production do
	gem 'pg', '0.15.1'
end

# capybara lets us model the user interaction in English
group :test do
	gem 'selenium-webdriver', '2.0.0'
	gem 'capybara', '2.1.0'	

  # Uncomment these lines on OS X.
  gem 'rb-fsevent', '0.9.3', :require => false
  gem 'growl', '1.0.3'

  # Uncomment these lines on Linux.
  # gem 'rb-inotify', '0.9.0'
  # gem 'libnotify', '0.8.0'

  # Uncomment these lines on Windows.
  # gem 'rb-fchange', '0.0.6'
  # gem 'rb-notifu', '0.0.4'
  # gem 'win32console', '1.3.2'

	gem 'factory_girl_rails', '4.2.1'
end


# Use SCSS for stylesheets
gem 'sass-rails', '4.0.0.rc1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '2.2.1'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'

# bundle exec rake doc:rails generates the API under doc/api.
group :doc do
  gem 'sdoc', '0.3.20', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

