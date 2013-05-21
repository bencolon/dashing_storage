# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dashing_storage/version'

Gem::Specification.new do |spec|
  spec.name          = "dashing_storage"
  spec.version       = DashingStorage::VERSION
  spec.authors       = ["Ben Colon"]
  spec.email         = ["ben@colon.com.fr"]
  spec.description   = %q{Add storage feature to the Dashing dashboard (mongoDb support)}
  spec.summary       = %q{Add storage feature to the Dashing dashboard}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "mongo", "~> 1.8.5"
  spec.add_dependency "bson_ext", "~> 1.8.5"
end
