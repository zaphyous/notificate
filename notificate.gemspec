# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notificate-rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'notificate'
  spec.version       = Notificate::Rails::VERSION
  spec.authors       = ['James Newton']
  spec.email         = ['james@Zaphyous.com']
  spec.description   = %q{Send notices to howell throughout rails applications}
  spec.summary       = %q{Send notices to howell throughout rails applications}
  spec.homepage      = 'https://github.com/zaphyous/notificate'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'
  spec.add_dependency 'json'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'minitest-colorize'
  spec.add_development_dependency 'guard-minitest'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'rails'
end
