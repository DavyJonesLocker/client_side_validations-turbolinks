require 'rubygems'
require 'bundler'
Bundler.setup
require 'rails'
require 'test/unit'
require 'mocha/setup'

if RUBY_VERSION >= '1.9.3'
  require 'debugger'
end

module ClientSideValidations; end
