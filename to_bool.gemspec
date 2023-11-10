# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "to_bool"
  gem.version       = "2.0.1"
  gem.authors       = ["Bryan Ricker"]
  gem.email         = ["rubygems@bryanricker.com"]
  gem.description   = %q{Super-simple gem that extends some Ruby classes with a "to_bool" method, which converts any object naturally into a boolean.}
  gem.summary       = %q{Convert any object naturally into a boolean}
  gem.homepage      = "http://github.com/bricker/to_bool"
  gem.license       = "MIT"

  gem.files         = %w{lib/to_bool.rb}
  gem.test_files    = %w{spec/to_bool_spec.rb}
  gem.require_paths = ["lib"]
end
