# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'anyhash/version'

Gem::Specification.new do |spec|
  spec.name          = 'anyhash'
  spec.version       = Anyhash::VERSION
  spec.authors       = ['Misha Bashkirov']
  spec.email         = ['bashmish@gmail.com']
  spec.summary       = 'RHash Ruby bindings'
  spec.description   = 'Hash functions based on RHash'
  spec.homepage      = 'https://github.com/bashmish/anyhash'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0.0.rc1'
  spec.add_development_dependency 'pry'
end
