# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'credit_bureau/version'

Gem::Specification.new do |gem|
  gem.name          = "credit_bureau"
  gem.version       = CreditBureau::VERSION
  gem.authors       = ["Paul Carey"]
  gem.email         = ["paul.carey@ignition.it"]
  gem.description   = %q{Credit bureau checks and verifies your numbers...}
  gem.summary       = %q{Credit bureau provides verification and identification utilities for credit cards}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "activesupport", "~> 4.0.0"

  gem.add_development_dependency "bundler"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~> 2.14.1"

end
