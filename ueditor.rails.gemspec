$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ueditor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ueditor.rails"
  s.version     = UEditor::VERSION
  s.authors     = ["Kaid Wong"]
  s.email       = ["kaid@kaid.me"]
  s.homepage    = "https://github.com/mindpin/ueditor.rails"
  s.summary     = "UEditor integration for Rails 4.1."
  s.description = "UEditor integration for Rails 4.1."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1"

  s.add_development_dependency "simple_form"
  s.add_development_dependency "pry"
  s.add_development_dependency "coffee-rails"
end
