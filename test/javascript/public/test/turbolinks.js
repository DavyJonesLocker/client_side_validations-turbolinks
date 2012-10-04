module('Validate Element with Turbolinks trigger', {
  setup: function() {
    ClientSideValidations.forms['new_user'] = {
      type: 'ActionView::Helpers::FormBuilder',
      input_tag: '<div class="field_with_errors"><span id="input_tag" /><label for="user_name" class="message"></label></div>',
      label_tag: '<div class="field_with_errors"><label id="label_tag" /></div>',
      validators: {
        'user[name]':{"presence":[{"message": "must be present"}], "format":[{"message":"is invalid","with":/\d+/}]},
        'user[password]':{"confirmation":[{"message": "must match confirmation"}]},
        'user[agree]':{"acceptance": [{"message": "must be accepted"}]},
        'user[email]':{"uniqueness":[{"message": "must be unique"}],"presence":[{"message": "must be present"}]},
        'user[phone_numbers_attributes][][number]':{"presence":[{"message": "must be present"}]}
      }
    }

    $('#qunit-fixture')
      .append($('<form />', {
        action: '/users',
        'data-validate': true,
        method: 'post',
        id: 'new_user'
      }))
      .find('form')
        .append($('<label for="user_name">Name</label>'))
        .append($('<input />', {
          name: 'user[name]',
          id: 'user_name',
          type: 'text'
        }))
        .append($('<label for="user_password">Password</label>'))
        .append($('<input />', {
          name: 'user[password]',
          id: 'user_password',
          type: 'password'
        }))
        .append($('<label for="user_password_confirmation">Password Confirmation</label>'))
        .append($('<input />', {
          name: 'user[password_confirmation]',
          id: 'user_password_confirmation',
          type: 'password'
        }))
        .append($('<label for="user_agree">Agree</label>'))
        .append($('<input />', {
          name: 'user[agree]',
          id: 'user_agree',
          type: 'checkbox',
          value: 1
        }))
        .append($('<input />', {
          name: 'user[email]',
          id: 'user_email',
          type: 'text'
        }))
        .append($('<label for="user_phone_numbers_attributes_0_number">Phone Number</label>'))
        .append($('<input />', {
          name: 'user[phone_numbers_attributes][0][number]',
          id: 'user_phone_numbers_attributes_0_number',
          type: 'text'
        })
        .append($('<input />', {
          name: 'user[phone_numbers_attributes][0][_destroy]',
          id: 'user_phone_numbers_attributes_0__destroy',
          type: 'hidden',
          value: "1"
        })))
        .append($('<label for="user_phone_numbers_attributes_1_number">Phone Number</label>'))
        .append($('<input />', {
          name: 'user[phone_numbers_attributes][1][number]',
          id: 'user_phone_numbers_attributes_1_number',
          type: 'text'
        }))

    $(document).trigger('page:change');
  }
});

test('Validate when focusouting', function() {
  var form = $('form#new_user'), input = form.find('input#user_name');
  var label = $('label[for="user_name"]');

  input.trigger('focusout');
  ok(input.parent().hasClass('field_with_errors'));
  ok(label.parent().hasClass('field_with_errors'));
});
