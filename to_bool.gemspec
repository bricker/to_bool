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

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec", [">= 0"]
end
