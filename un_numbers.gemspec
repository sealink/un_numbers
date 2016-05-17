# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'un_numbers/version'

Gem::Specification.new do |spec|
  spec.name          = "un_numbers"
  spec.version       = UnNumbers::VERSION
  spec.authors       = ["Michael Noack"]
  spec.email         = ["michael@noack.com.au"]

  spec.summary       = %q{Helper to fetch and list UN codes}
  spec.description   = %q{Helper to fetch and list UN codes}
  spec.homepage      = "https://github.com/sealink/un_numbers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
