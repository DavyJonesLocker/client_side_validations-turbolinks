module ClientSideValidations
  module Generators
    class Turbolinks
      def self.assets
        [{
          path: File.expand_path('../../../../vendor/assets/javascripts', __FILE__),
          file: 'rails.validations.turbolinks.js'
        }]
      end

      Generators.register_assets(self)
    end
  end
end
