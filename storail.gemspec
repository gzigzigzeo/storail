# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'storail/version'

Gem::Specification.new do |spec|
  spec.name          = "storail"
  spec.version       = Storail::VERSION
  spec.authors       = ["Viktor Sokolov"]
  spec.email         = ["gzigzigzeo@evilmartians.com"]
  spec.summary       = %q{Stòrail means "storage" in Irish}
  spec.description   = %q{Stòrail means "storage" in Irish}
  spec.homepage      = "http://github.com/gzigzigzeo/storail"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency "mime-types"
end
