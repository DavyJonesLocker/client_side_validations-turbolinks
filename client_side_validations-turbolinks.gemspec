# -*- encoding: utf-8 -*-
require File.expand_path('../lib/client_side_validations/turbolinks/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'client_side_validations-turbolinks'
  s.version     = ClientSideValidations::Turbolinks::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Cardarella"]
  s.email       = ["bcardarella@gmail.com"]
  s.homepage    = 'https://github.com/dockyard/client_side_validations-turbolinks'
  s.summary     = %q{Turbolinks Plugin for ClientSideValidations}
  s.description = %q{Turbolinks Plugin for ClientSideValidaitons}
  s.license     = 'MIT'

  s.files         = `git ls-files -- {lib/*,vendor/*,*.gemspec}`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency 'client_side_validations', '~> 4.1.0'
  s.add_dependency 'turbolinks', '~> 2.5'

  s.add_development_dependency 'rails', '>= 4.0.0', '<= 4.2.0.rc2'
  s.add_development_dependency 'mocha', '~> 1.1'
  s.add_development_dependency 'm', '~> 1.3'
  s.add_development_dependency 'minitest', '>= 4.7.5', '< 5.5.0'
  s.add_development_dependency 'simplecov', '~> 0.9.1'
  s.add_development_dependency 'coveralls', '~> 0.7.2'
  s.add_development_dependency 'appraisal', '~> 1.0'

  # For QUnit testing
  s.add_development_dependency 'sinatra', '~> 1.4'
  s.add_development_dependency 'shotgun', '~> 0.9'
  s.add_development_dependency 'thin', '~> 1.6'
  s.add_development_dependency 'json', '~> 1.8'
  s.add_development_dependency 'coffee-script', '~> 2.3'
end
