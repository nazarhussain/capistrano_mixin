# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano_mixin/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano_mixin"
  spec.version       = CapistranoMixin::VERSION
  spec.authors       = ["Nazar Hussain"]
  spec.email         = ["nazarhussain@gmail.com"]
  spec.summary       = %q{Capistrano mixins to ease the deployment.}
  spec.description   = %q{Capistrano mixins to ease the deployment.}
  spec.homepage      = "https://github.com/nazarhussain"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "capistrano", "~>2.15.4"
  spec.add_runtime_dependency "puma", "~> 2.8.1"   
end
