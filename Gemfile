source 'https://rubygems.org'

gem 'rails', '3.2.1'

gem 'sqlite3-ruby', '1.3.3'

gem 'jquery-rails'

# it looks like we need this to run on Heroku later
gem 'pg'

gem 'gravatar_image_tag', '1.0.0.pre2'
gem 'will_paginate'

# gem 'rake', '0.8.7'

group :development, :test do
	gem 'rspec-rails'
	gem 'annotate', '~> 2.4.1.beta'
	gem 'faker', '0.3.1'
end

group :test do
	gem 'rspec-rails'
	gem 'webrat', '0.7.1'
	gem 'factory_girl_rails'
end

# Gems used only for assets and not required
# in production environments by default.
# added this because heroko wasn't loading because it said it needed
# blueprint.css to be precompiled. Found this at:
# http://stackoverflow.com/questions/7300532/blueprint-css-rails-3-1-help
# group :assets do
# gem 'therubyracer'
# gem 'sass-rails'
# gem 'coffee-rails'
#  gem 'uglifier'
# end