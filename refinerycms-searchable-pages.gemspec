# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'refinerycms-searchable_pages'
  s.version       = '0.0.1'
  s.authors       = 'Fernando Aleman'
  s.email         = 'fernandoaleman@mac.com'
  s.description   = 'RefineryCMS engine that allows you to enable/disable pages from being indexed by search engines'
  s.summary       = 'RefineryCMS page searchable engine'
  s.homepage      = 'https://github.com/fernandoaleman/refinerycms-searchable-pages'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  # Runtime dependencies
  s.add_dependency 'refinerycms-core', '~> 2.1.1'
  s.add_dependency 'decorators',       '~> 1.0.0'
  s.add_dependency 'deface',           '~> 1.0.0'

  # Development dependencies
  s.add_development_dependency 'refinerycms-testing', '~> 2.1.1'
  s.add_development_dependency 'bundler',             '~> 1.3'
  s.add_development_dependency 'rake'
end
