# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'materialize_components/version'

Gem::Specification.new do |spec|
  spec.name          = "materialize_components"
  spec.version       = MaterializeComponents::VERSION
  spec.authors       = ["bo-oz"]
  spec.email         = ["boristoet80@gmail.com"]

  spec.summary       = "Simple helper gem that generates HTML for MaterializeCSS Components"
  spec.homepage      = "https://github.com/bo-oz/materialize_components"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
