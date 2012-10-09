require 'client_side_validations'
require 'client_side_validations/turbolinks'

if defined?(::Rails)
  require 'client_side_validations/generators/turbolinks'
end
