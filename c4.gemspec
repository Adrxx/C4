$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "c4/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "c4"
  s.version     = C4::VERSION
  s.authors     = ["Adrián Rubio"]
  s.email       = ["adrxxm@gmail.com"]
  s.homepage    = "google.com"
  s.summary     = "TODO: Summary of C4."
  s.description = "C4 is a CMS scaffolding tool."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency 'devise'
  s.add_dependency "paperclip"
  s.add_dependency 'sass-rails'
  s.add_dependency 'compass-rails'
  s.add_dependency 'coffee-rails'
  s.add_dependency 'jquery-rails'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'capistrano-rails'



end
