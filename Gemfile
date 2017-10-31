source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
 gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

gem 'adminlte2-rails'

gem 'devise'

gem 'autoprefixer-rails'

gem 'bootstrap-sass'

gem 'rails-jquery-autocomplete'

gem 'ckeditor', '~> 4.2', '>= 4.2.4'
gem 'paperclip'

gem 'jquery-ui-rails'
gem 'jquery-datatables-rails'

gem 'will_paginate'
gem 'will_paginate-bootstrap'

# Gestión de autorizaciones
gem 'cancancan'

# Gestión de roles
gem "rolify"

# Select con token_fields
gem 'chosen-rails'

# Select with search
gem "select2-rails"
# Validación en tiempo real 
gem 'client_side_validations'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
#Gema para auditoria
gem "audited", "~> 4.5"

gem 'filterrific'

gem 'record_tag_helper', '~> 1.0'

gem 'bootstrap-datepicker-rails'

gem 'kaminari'