# README

This project is an example of how to integrate the headless CMS Storyblok to a Ruby on Rails project.

You can read the full "how to article" at [www.storyblok.com/tp/ruby-on-rails-cms](https://www.storyblok.com/tp/ruby-on-rails-cms).

## Installation

First exchange the token Dv2ok3DqODzzb8QUuN2XCgtt with your preview token from Storyblok`s settings page in following files:

* pages_controller.rb
* page.liquid

Then install the gems and start the server.

~~~console
bundle install
rails server -p 3000
~~~