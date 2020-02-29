source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.0'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'jbuilder', '~> 2.7'
gem 'bcrypt', '~> 3.1.7'

gem 'activeadmin', '2.2.0'
gem 'devise'
gem 'http'
gem 'bootsnap', '>= 1.4.2', require: false
gem "rack-timeout", require: "rack/timeout/base"

group :development, :test do
  gem 'awesome_print'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'faker'
  gem 'grade_runner', github: 'firstdraft/grade_runner'
  gem 'pry-rails'
  gem 'sqlite3', '~> 1.4'
  gem 'table_print'
  gem 'web_git', github: 'firstdraft/web_git'
end

group :development do
  gem 'annotate', '< 3.0.0' 
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'draft_generators', github: 'firstdraft/draft_generators'
  gem 'letter_opener'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'meta_request'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'tty-spinner'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'rspec-html-matchers'
  gem 'rspec-rails'
  gem "factory_bot_rails"
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'webmock'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
