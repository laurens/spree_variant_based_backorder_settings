Variant-based backorder settings for Spree
==================================

Disable backordering on per-product or per-variant basis


Compatibility
=======

Built for spree 1.2

Has not been tested with 1.3 yet!

Installation
=======

Add to your Gemfile:

`gem 'spree_variant_based_backorder_settings', :git => 'git://github.com/laurens/spree_variant_based_backorder_settings.git', :branch => '1-2-stable'`

Install the required migration with

`rails g spree_variant_based_backorder_settings:install`

Note: this extension overwrites the entire [`_cart_form`](app/views/spree/products/_cart_form.html.erb) partial. 

If you or any other extension in your app have made any changes there, you will have to manually replace any occurence of

`Spree::Config[:allow_backorders]`

with

`(Spree::Config[:allow_backorders] || v.allow_backorders?)`

in order to check for the variant-based backorder settings.

TODO
=======

- Write tests

Testing
=======

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2013 [name of extension creator], released under the New BSD License
