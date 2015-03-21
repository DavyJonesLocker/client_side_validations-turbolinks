
/*
  Client Side Validations - Turbolinks - v2.5.0
  https://github.com/DavyJonesLocker/client_side_validations-turbolinks

  Copyright (c) 2015 DockYard, LLC
  Licensed under the MIT license
  http://www.opensource.org/licenses/mit-license.php
 */

(function() {
  $(document).bind('page:change', function() {
    return $(ClientSideValidations.selectors.forms).validate();
  });

}).call(this);
