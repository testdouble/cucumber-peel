# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cucumber_peel/version'

Gem::Specification.new do |spec|
  spec.name          = "cucumber-peel"
  spec.version       = CucumberPeel::VERSION
  spec.authors       = ["Justin Searls"]
  spec.email         = ["searls@gmail.com"]
  spec.description   = %q{Helps you locate the implementation for a given step}
  spec.summary       = %q{Provides a CLI to search a project's step implementations for a given step example}
  spec.homepage      = "https://github.com/testdouble/cucumber-peel"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "cucumber", "~> 1.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
