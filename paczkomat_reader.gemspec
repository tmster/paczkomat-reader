# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paczkomat_reader/version'

Gem::Specification.new do |spec|
  spec.name          = "paczkomat_reader"
  spec.version       = PaczkomatReader::VERSION
  spec.authors       = ["Tomasz Szkaradek"]
  spec.email         = ["tmster.sz@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  end

  spec.summary       = %q{Gem provides list of all available machines in api}
  spec.homepage      = "https://github.com/tmster/paczkomat-reader"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
