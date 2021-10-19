# FactoryStrategist

[Factory_bot](https://github.com/thoughtbot/factory_bot) provides some build strategies (saved instances, unsaved instances, attribute hashes, and stubbed objects). FactoryStrategist is a gem that tells you which factory_bot build_strategy is best on your tests.

**NOTE**
This gem assumes that the tests are written in [rspec](https://github.com/rspec/rspec).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'factory_strategist'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install factory_strategist

## Usage

As for usability, it is like a kind of linter.

### Example

When your application has `spec/models/user_spec.rb` and run it with FactoryStrategist.

```shell
$ FATORYSTRATEGIST=1 bundle exec rspec spec/models/user_spec.rb
```

In the case which you choose best strategies, the commands returns nothing.
Otherwise, You can get any message as a result like:

```
#=> /spec/models/user_spec.rb:27 `create` can be replaced to `build_stubbed`
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/neko314/factory_strategist. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/neko314/factory_strategist/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FactoryStrategist project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/neko314/factory_strategist/blob/main/CODE_OF_CONDUCT.md).
