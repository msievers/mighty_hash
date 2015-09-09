# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mighty_hash/version"

Gem::Specification.new do |spec|
  spec.name          = "mighty_hash"
  spec.version       = MightyHash::VERSION
  spec.authors       = ["Michael Sievers"]
  spec.summary       = %q{Utility functions for ruby hashes}
  spec.homepage      = "https://github.com/msievers/mighty_hash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
