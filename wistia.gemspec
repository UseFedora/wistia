# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wistia/version'

Gem::Specification.new do |spec|
  spec.name          = "wistia"
  spec.version       = Wistia::VERSION
  spec.authors       = ["Noah Pryor", "Dustin Eichler", "Jack Phelps", "Sid Yadav", "Mike Poage"]
  spec.email         = ["dev@teachable.com"]

  spec.summary       = %q{Wistia API wrapper}
  spec.description   = %q{wistia api wrapper}
  spec.homepage      = "https://github.com/usefedora/wistia"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
