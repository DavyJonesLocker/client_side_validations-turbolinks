###
  Client Side Validations - Turbolinks - v<%= ClientSideValidations::Turbolinks::VERSION %>
  https://github.com/dockyard/client_side_validations-turbolinks

  Copyright (c) <%= DateTime.now.year %> DockYard, LLC
  Licensed under the MIT license
  http://www.opensource.org/licenses/mit-license.php
###

$ ->
  $(document).bind 'page:change', ->
    $('form[data-validate]').validate()
