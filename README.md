# Ruby-on-Rails-TDD-example

Example [Ruby on Rails](http://rubyonrails.org/) application developed using [Test-Driven Development](http://en.wikipedia.org/wiki/Test-driven_development) (TDD).

The application is a very simple contact management solution, showing a list of contacts with their names and ages.

Tests are written in [RSpec](http://rspec.info/) and include:
* [Model tests](https://github.com/hpi-swt2/Ruby-on-Rails-TDD-example/blob/master/Contacts/spec/models/contact_spec.rb) ([documentation](https://www.relishapp.com/rspec/rspec-rails/v/3-2/docs/model-specs))
* [Controller tests](https://github.com/hpi-swt2/Ruby-on-Rails-TDD-example/blob/master/Contacts/spec/controllers/contact_controller_spec.rb) ([documentation](https://www.relishapp.com/rspec/rspec-rails/v/3-2/docs/controller-specs/controller-spec))
* [View tests](https://github.com/hpi-swt2/Ruby-on-Rails-TDD-example/blob/master/Contacts/spec/views/contact/index.html.erb_spec.rb) ([documentation](https://www.relishapp.com/rspec/rspec-rails/v/3-2/docs/view-specs/view-spec))
* [Feature tests](https://github.com/hpi-swt2/Ruby-on-Rails-TDD-example/blob/master/Contacts/spec/features/contact_list_age_spec.rb) ([documentation](https://www.relishapp.com/rspec/rspec-rails/v/3-2/docs/feature-specs/feature-spec))