
/*
  Client Side Validations - Turbolinks - v0.0.1.alpha.1
  https://github.com/dockyard/client_side_validations-turbolinks

  Copyright (c) 2012 DockYard, LLC
  Licensed under the MIT license
  http://www.opensource.org/licenses/mit-license.php
*/


(function() {

  $(function() {
    return $(document).bind('page:change', function() {
      return $('form[data-validate]').validate();
    });
  });

}).call(this);
