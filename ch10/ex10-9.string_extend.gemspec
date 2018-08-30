# Easier Gem Creation

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_extend/version'

Gem::Specification.new do |spec|
  spec.name          = "string_extend"
  spec.version       = StringExtend::VERSION
  spec.authors       = ["Peter Cooper"]
  spec.email         = ["git@peterc.org"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spce.license       = "MIT"

  spec.files         = 'git ls-files -z'.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
