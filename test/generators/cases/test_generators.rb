require 'base_helper'

module TestApp
  class Application < Rails::Application
  end
end

require 'rails/generators/test_case'
require 'client_side_validations-turbolinks'
require 'generators/client_side_validations/copy_assets_generator'
require 'generators/client_side_validations/install_generator'

class InstallGeneratorTest < Rails::Generators::TestCase
  tests ClientSideValidations::Generators::InstallGenerator
  destination File.expand_path('../../tmp', __FILE__)
  setup :prepare_destination

  test 'Assert file is properly created when no asset pipeline present' do
    stub_configuration
    run_generator
    assert_file 'public/javascripts/rails.validations.turbolinks.js'
  end

  test 'Assert file is properly created when asset pipeline present and disabled' do
    stub_configuration
    configuration = {:enabled => false}
    configuration.stubs(:prefix).returns('/assets')
    Rails.configuration.stubs(:assets).returns(configuration)
    run_generator
    assert_file 'public/javascripts/rails.validations.turbolinks.js'
  end

  test 'Assert file is not created when asset pipeline present and enabled' do
    stub_configuration
    configuration = {:enabled => true}
    configuration.stubs(:prefix).returns('/assets')
    Rails.configuration.stubs(:assets).returns(configuration)
    run_generator
    assert_no_file 'app/assets/javascripts/rails.validations.turbolinks.js'
  end

  def stub_configuration
    Rails.stubs(:configuration).returns(mock('Configuration'))
  end
end

class CopyAssetsGeneratorTest < Rails::Generators::TestCase
  tests ClientSideValidations::Generators::CopyAssetsGenerator
  destination File.expand_path('../../tmp', __FILE__)
  setup :prepare_destination

  test 'Assert file is properly created when no asset pipeline present' do
    stub_configuration
    run_generator
    assert_file 'public/javascripts/rails.validations.turbolinks.js'
  end

  test 'Assert file is properly created when asset pipeline present and disabled' do
    stub_configuration
    configuration = {:enabled => false}
    configuration.stubs(:prefix).returns('/assets')
    Rails.configuration.stubs(:assets).returns(configuration)
    run_generator
    assert_file 'public/javascripts/rails.validations.turbolinks.js'
  end

  test 'Assert file is properly created when asset pipeline present and enabled' do
    stub_configuration
    configuration = {:enabled => true}
    configuration.stubs(:prefix).returns('/assets')
    Rails.configuration.stubs(:assets).returns(configuration)
    run_generator
    assert_file 'app/assets/javascripts/rails.validations.turbolinks.js'
  end

  def stub_configuration
    Rails.stubs(:configuration).returns(mock('Configuration'))
  end
end

