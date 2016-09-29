$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "time_traveller/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "time_traveller"
  s.version     = TimeTraveller::VERSION
  s.authors     = ["Troy Nichols"]
  s.email       = ["troygnichols [at] gmail.com"]
  s.homepage    = "https://github.com/troygnichols/time_traveller"
  s.summary     = "User Interface for testing your rails app at different dates/times"
  s.description = "Uses the delorean gem to fake the current server date/time"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2"
  s.add_dependency "jquery-rails"
  s.add_dependency "delorean"
end
