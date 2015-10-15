$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "c4/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "c4"
  s.version     = C4::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of C4."
  s.description = "TODO: Description of C4."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "bower-rails"
  s.add_dependency 'devise', '~> 3.4.1'
  s.add_dependency "paperclip", "~> 4.2"
  s.add_dependency 'compass-rails', '~> 2.0.4'


  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'capistrano-rails'



end
