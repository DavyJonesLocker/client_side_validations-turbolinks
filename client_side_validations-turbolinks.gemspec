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

  s.files         = `git ls-files -- {lib/*,vendor/*,*.gemspec}`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency 'client_side_validations', '>= 4.1.0'
  s.add_dependency 'turbolinks', '>= 2.5.0', '< 3'

  s.add_development_dependency 'rails', '>= 4.0.0', '<= 4.2.0.beta2'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'm'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'appraisal'

  # For QUnit testing
  s.add_development_dependency 'sinatra', '~> 1.0'
  s.add_development_dependency 'shotgun'
  s.add_development_dependency 'thin'
  s.add_development_dependency 'json'
  s.add_development_dependency 'coffee-script'
end
