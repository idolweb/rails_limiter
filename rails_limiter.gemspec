$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_limiter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_limiter"
  s.version     = RailsLimiter::VERSION
  s.authors     = ["Julien Séveno", "Jean-Philippe Lecaille"]
  s.email       = ["jseveno@gmail.com", "jplecaille@gmail.com"]
  s.homepage    = "https://github.com/idolweb/rails_limiter"
  s.summary     = "To limit the requests number of a user on an action's controller"
  s.description = "To limit the requests number of a user on an action's controller"
  s.license     = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 5.0.0.beta"

  s.add_development_dependency "sqlite3"
end
