# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'segfault/version'

Gem::Specification.new do |spec|
  spec.name = 'segfault'
  spec.version = Segfault::VERSION
  spec.authors = 'Sergey Avseyev'
  spec.email = 'sergey.avseyev@gmail.com'
  spec.summary = 'Make your ruby segfault'
  spec.description = 'Helper to abort your ruby script execution'
  spec.homepage = ''
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(/^(test|spec|features)\//)
  spec.extensions  = spec.files.grep(%r{^ext/.*/extconf.rb})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rake-compiler'
end
