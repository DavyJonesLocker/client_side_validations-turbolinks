# ClientSideValidations-Turbolinks #

[![Gem Version](https://badge.fury.io/rb/client_side_validations-turbolinks.svg)](http://badge.fury.io/rb/client_side_validations-turbolinks)
[![Build Status](https://secure.travis-ci.org/dockyard/client_side_validations-turbolinks.svg?branch=master)](https://travis-ci.org/dockyard/client_side_validations-turbolinks)
[![Dependency Status](https://gemnasium.com/dockyard/client_side_validations-turbolinks.svg)](https://gemnasium.com/dockyard/client_side_validations-turbolinks)
[![Code Climate](https://codeclimate.com/github/dockyard/client_side_validations-turbolinks/badges/gpa.svg)](https://codeclimate.com/github/dockyard/client_side_validations-turbolinks)

[Turbolinks](https://github.com/rails/turbolinks) plugin for [ClientSideValidations](https://github.com/bcardarella/client_side_validations)

## Installation ##

In your Gemfile add the following:

```ruby
gem 'turbolinks'
gem 'client_side_validations'
gem 'client_side_validations-turbolinks'
```

Order matters here. `Turbolinks` and `ClientSideValidations` need to be
required **before** `ClientSideValidations-Turbolinks`.

[Follow the remaining installation instructions for ClientSideValidations](https://github.com/bcardarella/client_side_validations/README.markdown)

Add the following line to `app/assets/javascripts/application.js`

```javascript
//= require rails.validations.turbolinks
```

Again, order matters. You should add this line after the require for `rails.validations` as described in the `ClientSideValidations` installation instructions.

If the asset pipeline is disabled the asset file will be copied
into `public/javascripts` when the `ClientSideValidations` install generator is run.

At any time you can copy the asset file into your project by running:

```
rails g client_side_validations:copy_assets
```

If the asset pipeline is disabled the asset file will be copied
into `public/javascripts`. Otherwise the asset file will be copied into
`app/assets/javascripts` (or whatever asset directory you have
defined)

## Usage ##

As long as you are using `Turbolinks` properly this should "just work". Any new forms that are candiadates for
`ClientSideValidations` will be applied on every `page:change` event.

## Authors ##

[Brian Cardarella](http://twitter.com/bcardarella)

[We are very thankful for the many contributors](https://github.com/dockyard/client_side_validations-turbolinks/graphs/contributors)

## Versioning ##

This gem follows [Semantic Versioning](http://semver.org)

Major and minor version numbers will follow `Turbolinks`'s major and
minor version numbers. For example,
`client_side_validations-turbolinks-2.5.0` will be compatible up to
`~> turbolinks-2.5.0`

## Want to help? ##

Please do! We are always looking to improve this gem. Please see our
[Contribution Guidelines](https://github.com/dockyard/client_side_validations-turbolinks/blob/master/CONTRIBUTING.md)
on how to properly submit issues and pull requests.

## Legal ##

[DockYard](http://dockyard.com), LLC &copy; 2012

[@dockyard](http://twitter.com/dockyard)

[Licensed under the MIT license](http://www.opensource.org/licenses/mit-license.php)
